.class Ljava/util/stream/WhileOps$3;
.super Ljava/util/stream/LongPipeline$StatefulOp;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/WhileOps;->makeTakeWhileLong(Ljava/util/stream/AbstractPipeline;Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/LongPipeline$StatefulOp<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$predicate:Ljava/util/function/LongPredicate;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongPredicate;)V
    .registers 5
    .param p2, "inputShape"    # Ljava/util/stream/StreamShape;
    .param p3, "opFlags"    # I

    .line 184
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    iput-object p4, p0, Ljava/util/stream/WhileOps$3;->val$predicate:Ljava/util/function/LongPredicate;

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/LongPipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-void
.end method

.method static synthetic blacklist lambda$opEvaluateParallelLazy$0(I)[Ljava/lang/Long;
    .registers 2
    .param p0, "x$0"    # I

    .line 190
    new-array v0, p0, [Ljava/lang/Long;

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
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Node<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 204
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/stream/WhileOps$TakeWhileTask;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/stream/WhileOps$TakeWhileTask;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 205
    invoke-virtual {v0}, Ljava/util/stream/WhileOps$TakeWhileTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    .line 204
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
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 189
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 190
    new-instance v0, Ljava/util/stream/WhileOps$3$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/stream/WhileOps$3$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/stream/WhileOps$3;->opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    .line 190
    return-object v0

    .line 194
    :cond_1a
    new-instance v0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;

    .line 195
    invoke-virtual {p1, p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v1

    check-cast v1, Ljava/util/Spliterator$OfLong;

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/util/stream/WhileOps$3;->val$predicate:Ljava/util/function/LongPredicate;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;-><init>(Ljava/util/Spliterator$OfLong;ZLjava/util/function/LongPredicate;)V

    .line 194
    return-object v0
.end method

.method public blacklist opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 211
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/stream/WhileOps$3$1;

    invoke-direct {v0, p0, p2}, Ljava/util/stream/WhileOps$3$1;-><init>(Ljava/util/stream/WhileOps$3;Ljava/util/stream/Sink;)V

    return-object v0
.end method
