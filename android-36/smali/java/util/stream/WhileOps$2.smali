.class Ljava/util/stream/WhileOps$2;
.super Ljava/util/stream/IntPipeline$StatefulOp;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/WhileOps;->makeTakeWhileInt(Ljava/util/stream/AbstractPipeline;Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/IntPipeline$StatefulOp<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$predicate:Ljava/util/function/IntPredicate;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntPredicate;)V
    .registers 5
    .param p2, "inputShape"    # Ljava/util/stream/StreamShape;
    .param p3, "opFlags"    # I

    .line 124
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    iput-object p4, p0, Ljava/util/stream/WhileOps$2;->val$predicate:Ljava/util/function/IntPredicate;

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/IntPipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-void
.end method

.method static synthetic blacklist lambda$opEvaluateParallelLazy$0(I)[Ljava/lang/Integer;
    .registers 2
    .param p0, "x$0"    # I

    .line 130
    new-array v0, p0, [Ljava/lang/Integer;

    return-object v0
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
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Node<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 144
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/stream/WhileOps$TakeWhileTask;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/stream/WhileOps$TakeWhileTask;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 145
    invoke-virtual {v0}, Ljava/util/stream/WhileOps$TakeWhileTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    .line 144
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
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 129
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 130
    new-instance v0, Ljava/util/stream/WhileOps$2$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/stream/WhileOps$2$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/stream/WhileOps$2;->opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    .line 130
    return-object v0

    .line 134
    :cond_1a
    new-instance v0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;

    .line 135
    invoke-virtual {p1, p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v1

    check-cast v1, Ljava/util/Spliterator$OfInt;

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/util/stream/WhileOps$2;->val$predicate:Ljava/util/function/IntPredicate;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;-><init>(Ljava/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V

    .line 134
    return-object v0
.end method

.method public blacklist opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 151
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/stream/WhileOps$2$1;

    invoke-direct {v0, p0, p2}, Ljava/util/stream/WhileOps$2$1;-><init>(Ljava/util/stream/WhileOps$2;Ljava/util/stream/Sink;)V

    return-object v0
.end method
