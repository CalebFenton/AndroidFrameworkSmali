.class Ljava/util/stream/DistinctOps$1;
.super Ljava/util/stream/ReferencePipeline$StatefulOp;
.source "DistinctOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DistinctOps;->makeRef(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/ReferencePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReferencePipeline$StatefulOp<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V
    .registers 4
    .param p2, "inputShape"    # Ljava/util/stream/StreamShape;
    .param p3, "opFlags"    # I

    .line 56
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-void
.end method

.method static synthetic blacklist lambda$opEvaluateParallel$0(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V
    .registers 4
    .param p0, "seenNull"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p1, "map"    # Ljava/util/concurrent/ConcurrentHashMap;
    .param p2, "t"    # Ljava/lang/Object;

    .line 84
    if-nez p2, :cond_7

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_c

    .line 87
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_c
    return-void
.end method


# virtual methods
.method public blacklist opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 9
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

    .line 72
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    sget-object v0, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 74
    invoke-virtual {p1, p2, v1, p3}, Ljava/util/stream/PipelineHelper;->evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 76
    :cond_12
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 77
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/DistinctOps$1;->reduce(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 81
    :cond_23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 82
    .local v0, "seenNull":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 83
    .local v2, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TT;Ljava/lang/Boolean;>;"
    new-instance v3, Ljava/util/stream/DistinctOps$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v2}, Ljava/util/stream/DistinctOps$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-static {v3, v1}, Ljava/util/stream/ForEachOps;->makeRef(Ljava/util/function/Consumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v1

    .line 89
    .local v1, "forEachOp":Ljava/util/stream/TerminalOp;, "Ljava/util/stream/TerminalOp<TT;Ljava/lang/Void;>;"
    invoke-interface {v1, p1, p2}, Ljava/util/stream/TerminalOp;->evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;

    .line 93
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 94
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 96
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v4

    .line 97
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_4d
    invoke-static {v3}, Ljava/util/stream/Nodes;->node(Ljava/util/Collection;)Ljava/util/stream/Node;

    move-result-object v4

    return-object v4
.end method

.method public blacklist opEvaluateParallelLazy(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .registers 5
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

    .line 106
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    sget-object v0, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 108
    invoke-virtual {p1, p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 110
    :cond_11
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 112
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/DistinctOps$1;->reduce(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 116
    :cond_26
    new-instance v0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;

    invoke-virtual {p1, p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Ljava/util/Spliterator;)V

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

    .line 123
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 126
    return-object p2

    .line 127
    :cond_c
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 128
    new-instance v0, Ljava/util/stream/DistinctOps$1$1;

    invoke-direct {v0, p0, p2}, Ljava/util/stream/DistinctOps$1$1;-><init>(Ljava/util/stream/DistinctOps$1;Ljava/util/stream/Sink;)V

    return-object v0

    .line 159
    :cond_1a
    new-instance v0, Ljava/util/stream/DistinctOps$1$2;

    invoke-direct {v0, p0, p2}, Ljava/util/stream/DistinctOps$1$2;-><init>(Ljava/util/stream/DistinctOps$1;Ljava/util/stream/Sink;)V

    return-object v0
.end method

.method blacklist reduce(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/stream/Node;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 61
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/DistinctOps$1$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/util/stream/DistinctOps$1$$ExternalSyntheticLambda1;-><init>()V

    new-instance v1, Ljava/util/stream/DistinctOps$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljava/util/stream/DistinctOps$1$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Ljava/util/stream/DistinctOps$1$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Ljava/util/stream/DistinctOps$1$$ExternalSyntheticLambda3;-><init>()V

    .line 62
    invoke-static {v0, v1, v2}, Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    .line 64
    .local v0, "reduceOp":Ljava/util/stream/TerminalOp;, "Ljava/util/stream/TerminalOp<TT;Ljava/util/LinkedHashSet<TT;>;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/stream/TerminalOp;->evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Ljava/util/stream/Nodes;->node(Ljava/util/Collection;)Ljava/util/stream/Node;

    move-result-object v1

    return-object v1
.end method
