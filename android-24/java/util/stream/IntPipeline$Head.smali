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
        "Ljava/util/stream/IntPipeline",
        "<TE_IN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Spliterator;IZ)V
    .locals 0
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 541
    .local p0, "this":Ljava/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline<TE_IN;>.Head<TE_IN;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/IntPipeline;-><init>(Ljava/util/Spliterator;IZ)V

    #@3
    .line 540
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;IZ)V
    .locals 0
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Integer;",
            ">;>;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 528
    .local p0, "this":Ljava/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline<TE_IN;>.Head<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Integer;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/IntPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    #@3
    .line 527
    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 558
    .local p0, "this":Ljava/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline<TE_IN;>.Head<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 559
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->sourceStageSpliterator()Ljava/util/Spliterator;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Ljava/util/stream/IntPipeline;->-wrap0(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@11
    .line 557
    :goto_0
    return-void

    #@12
    .line 562
    :cond_0
    invoke-super {p0, p1}, Ljava/util/stream/IntPipeline;->forEach(Ljava/util/function/IntConsumer;)V

    #@15
    goto :goto_0
.end method

.method public forEachOrdered(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 568
    .local p0, "this":Ljava/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline<TE_IN;>.Head<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 569
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->sourceStageSpliterator()Ljava/util/Spliterator;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Ljava/util/stream/IntPipeline;->-wrap0(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@11
    .line 567
    :goto_0
    return-void

    #@12
    .line 572
    :cond_0
    invoke-super {p0, p1}, Ljava/util/stream/IntPipeline;->forEachOrdered(Ljava/util/function/IntConsumer;)V

    #@15
    goto :goto_0
.end method

.method public final opIsStateful()Z
    .locals 1

    #@0
    .prologue
    .line 546
    .local p0, "this":Ljava/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline<TE_IN;>.Head<TE_IN;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public final opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Sink",
            "<TE_IN;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 551
    .local p0, "this":Ljava/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline<TE_IN;>.Head<TE_IN;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
