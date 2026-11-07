.class final Ljava/util/stream/SortedOps$OfDouble;
.super Ljava/util/stream/DoublePipeline$StatefulOp;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/DoublePipeline$StatefulOp<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/AbstractPipeline;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Double;",
            "*>;)V"
        }
    .end annotation

    .line 247
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    sget-object v0, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->IS_ORDERED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->IS_SORTED:I

    or-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Ljava/util/stream/DoublePipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    .line 249
    return-void
.end method


# virtual methods
.method public blacklist opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Node<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 267
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Double;>;"
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Ljava/util/stream/PipelineHelper;->evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 271
    :cond_12
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p3}, Ljava/util/stream/PipelineHelper;->evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node$OfDouble;

    .line 273
    .local v0, "n":Ljava/util/stream/Node$OfDouble;
    invoke-interface {v0}, Ljava/util/stream/Node$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 274
    .local v1, "content":[D
    invoke-static {v1}, Ljava/util/Arrays;->parallelSort([D)V

    .line 276
    invoke-static {v1}, Ljava/util/stream/Nodes;->node([D)Ljava/util/stream/Node$OfDouble;

    move-result-object v2

    return-object v2
.end method

.method public blacklist opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 253
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 256
    return-object p2

    .line 257
    :cond_c
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 258
    new-instance v0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;

    invoke-direct {v0, p2}, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;-><init>(Ljava/util/stream/Sink;)V

    return-object v0

    .line 260
    :cond_1a
    new-instance v0, Ljava/util/stream/SortedOps$DoubleSortingSink;

    invoke-direct {v0, p2}, Ljava/util/stream/SortedOps$DoubleSortingSink;-><init>(Ljava/util/stream/Sink;)V

    return-object v0
.end method
