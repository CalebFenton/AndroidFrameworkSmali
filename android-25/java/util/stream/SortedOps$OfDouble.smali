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
        "Ljava/util/stream/DoublePipeline$StatefulOp",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/stream/AbstractPipeline;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*",
            "Ljava/lang/Double;",
            "*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 247
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    sget-object v0, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@2
    .line 248
    sget v1, Ljava/util/stream/StreamOpFlag;->IS_ORDERED:I

    #@4
    sget v2, Ljava/util/stream/StreamOpFlag;->IS_SORTED:I

    #@6
    or-int/2addr v1, v2

    #@7
    .line 247
    invoke-direct {p0, p1, v0, v1}, Ljava/util/stream/DoublePipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    #@a
    .line 246
    return-void
.end method


# virtual methods
.method public opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/function/IntFunction",
            "<[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Node",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 267
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Double;>;"
    sget-object v2, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    #@2
    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    #@5
    move-result v3

    #@6
    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 268
    const/4 v2, 0x0

    #@d
    invoke-virtual {p1, p2, v2, p3}, Ljava/util/stream/PipelineHelper;->evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 271
    :cond_0
    const/4 v2, 0x1

    #@13
    invoke-virtual {p1, p2, v2, p3}, Ljava/util/stream/PipelineHelper;->evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/util/stream/Node$OfDouble;

    #@19
    .line 273
    .local v1, "n":Ljava/util/stream/Node$OfDouble;
    invoke-interface {v1}, Ljava/util/stream/Node$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, [D

    #@1f
    .line 274
    .local v0, "content":[D
    invoke-static {v0}, Ljava/util/Arrays;->parallelSort([D)V

    #@22
    .line 276
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([D)Ljava/util/stream/Node$OfDouble;

    #@25
    move-result-object v2

    #@26
    return-object v2
.end method

.method public opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 253
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 255
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 256
    return-object p2

    #@c
    .line 257
    :cond_0
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 258
    new-instance v0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;

    #@16
    invoke-direct {v0, p2}, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;-><init>(Ljava/util/stream/Sink;)V

    #@19
    return-object v0

    #@1a
    .line 260
    :cond_1
    new-instance v0, Ljava/util/stream/SortedOps$DoubleSortingSink;

    #@1c
    invoke-direct {v0, p2}, Ljava/util/stream/SortedOps$DoubleSortingSink;-><init>(Ljava/util/stream/Sink;)V

    #@1f
    return-object v0
.end method
