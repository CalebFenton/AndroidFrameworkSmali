.class Ljava/util/stream/WhileOps$1Op;
.super Ljava/util/stream/ReferencePipeline$StatefulOp;
.source "WhileOps.java"

# interfaces
.implements Ljava/util/stream/WhileOps$DropWhileOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/WhileOps;->makeDropWhileRef(Ljava/util/stream/AbstractPipeline;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Op"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReferencePipeline$StatefulOp<",
        "TT;TT;>;",
        "Ljava/util/stream/WhileOps$DropWhileOp<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$predicate:Ljava/util/function/Predicate;


# direct methods
.method public constructor blacklist <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Predicate;)V
    .registers 5
    .param p2, "inputShape"    # Ljava/util/stream/StreamShape;
    .param p3, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*TT;*>;",
            "Ljava/util/stream/StreamShape;",
            "I)V"
        }
    .end annotation

    .line 347
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    iput-object p4, p0, Ljava/util/stream/WhileOps$1Op;->val$predicate:Ljava/util/function/Predicate;

    .line 348
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    .line 349
    return-void
.end method


# virtual methods
.method public blacklist opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 370
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    new-instance v0, Ljava/util/stream/WhileOps$DropWhileTask;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/stream/WhileOps$DropWhileTask;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 371
    invoke-virtual {v0}, Ljava/util/stream/WhileOps$DropWhileTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    .line 370
    return-object v0
.end method

.method public blacklist opEvaluateParallelLazy(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 355
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 356
    invoke-static {}, Ljava/util/stream/Nodes;->castingArray()Ljava/util/function/IntFunction;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/stream/WhileOps$1Op;->opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    .line 357
    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    .line 356
    return-object v0

    .line 360
    :cond_19
    new-instance v0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;

    .line 361
    invoke-virtual {p1, p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/util/stream/WhileOps$1Op;->val$predicate:Ljava/util/function/Predicate;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;-><init>(Ljava/util/Spliterator;ZLjava/util/function/Predicate;)V

    .line 360
    return-object v0
.end method

.method public blacklist opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink<",
            "TT;>;)",
            "Ljava/util/stream/Sink<",
            "TT;>;"
        }
    .end annotation

    .line 377
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Ljava/util/stream/WhileOps$1Op;->opWrapSink(Ljava/util/stream/Sink;Z)Ljava/util/stream/WhileOps$DropWhileSink;

    move-result-object v0

    return-object v0
.end method

.method public blacklist opWrapSink(Ljava/util/stream/Sink;Z)Ljava/util/stream/WhileOps$DropWhileSink;
    .registers 4
    .param p2, "retainAndCountDroppedElements"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink<",
            "TT;>;Z)",
            "Ljava/util/stream/WhileOps$DropWhileSink<",
            "TT;>;"
        }
    .end annotation

    .line 409
    .local p1, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    new-instance v0, Ljava/util/stream/WhileOps$1Op$1OpSink;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/WhileOps$1Op$1OpSink;-><init>(Ljava/util/stream/WhileOps$1Op;Ljava/util/stream/Sink;Z)V

    return-object v0
.end method
