.class final Ljava/util/stream/DistinctOps$1;
.super Ljava/util/stream/ReferencePipeline$StatefulOp;
.source "DistinctOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DistinctOps;->makeRef(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/ReferencePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_opEvaluateParallel_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_java_util_function_IntFunction_generator_LambdaImpl0;,
        Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;,
        Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl1;,
        Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReferencePipeline$StatefulOp",
        "<TT;TT;>;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_DistinctOps$1-mthref-0()Ljava/util/LinkedHashSet;
    .locals 1

    #@0
    .prologue
    .line 62
    new-instance v0, Ljava/util/LinkedHashSet;

    #@2
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@5
    return-object v0
.end method

.method static synthetic -java_util_stream_DistinctOps$1-mthref-1(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V
    .locals 0

    #@0
    .prologue
    .line 62
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3
    return-void
.end method

.method static synthetic -java_util_stream_DistinctOps$1-mthref-2(Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;)V
    .locals 0

    #@0
    .prologue
    .line 63
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    #@3
    return-void
.end method

.method static synthetic -java_util_stream_DistinctOps$1_lambda$4(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V
    .locals 1
    .param p0, "seenNull"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p1, "map"    # Ljava/util/concurrent/ConcurrentHashMap;
    .param p2, "t"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 83
    if-nez p2, :cond_0

    #@2
    .line 84
    const/4 v0, 0x1

    #@3
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@6
    .line 0
    :goto_0
    return-void

    #@7
    .line 86
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@9
    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    goto :goto_0
.end method

.method constructor <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V
    .locals 0
    .param p2, "$anonymous1"    # Ljava/util/stream/StreamShape;
    .param p3, "$anonymous2"    # I

    #@0
    .prologue
    .line 55
    .local p1, "$anonymous0":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    #@3
    .line 56
    return-void
.end method


# virtual methods
.method public opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const/4 v7, 0x0

    #@1
    .line 71
    sget-object v5, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    #@3
    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    #@6
    move-result v6

    #@7
    invoke-virtual {v5, v6}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@a
    move-result v5

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 73
    invoke-virtual {p1, p2, v7, p3}, Ljava/util/stream/PipelineHelper;->evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@10
    move-result-object v5

    #@11
    return-object v5

    #@12
    .line 75
    :cond_0
    sget-object v5, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    #@14
    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    #@17
    move-result v6

    #@18
    invoke-virtual {v5, v6}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_1

    #@1e
    .line 76
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/DistinctOps$1;->reduce(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/stream/Node;

    #@21
    move-result-object v5

    #@22
    return-object v5

    #@23
    .line 80
    :cond_1
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@25
    invoke-direct {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@28
    .line 81
    .local v4, "seenNull":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    #@2a
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@2d
    .line 82
    .local v3, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TT;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_opEvaluateParallel_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_java_util_function_IntFunction_generator_LambdaImpl0;

    #@2f
    invoke-direct {v5, v4, v3}, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_opEvaluateParallel_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_java_util_function_IntFunction_generator_LambdaImpl0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentHashMap;)V

    #@32
    invoke-static {v5, v7}, Ljava/util/stream/ForEachOps;->makeRef(Ljava/util/function/Consumer;Z)Ljava/util/stream/TerminalOp;

    #@35
    move-result-object v0

    #@36
    .line 88
    .local v0, "forEachOp":Ljava/util/stream/TerminalOp;, "Ljava/util/stream/TerminalOp<TT;Ljava/lang/Void;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/stream/TerminalOp;->evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;

    #@39
    .line 92
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    #@3c
    move-result-object v1

    #@3d
    .line 93
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@40
    move-result v5

    #@41
    if-eqz v5, :cond_2

    #@43
    .line 95
    new-instance v2, Ljava/util/HashSet;

    #@45
    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@48
    .line 96
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const/4 v5, 0x0

    #@49
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4c
    move-object v1, v2

    #@4d
    .line 98
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .restart local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :cond_2
    invoke-static {v1}, Ljava/util/stream/Nodes;->node(Ljava/util/Collection;)Ljava/util/stream/Node;

    #@50
    move-result-object v5

    #@51
    return-object v5
.end method

.method public opEvaluateParallelLazy(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 104
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    sget-object v0, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    #@2
    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 106
    invoke-virtual {p1, p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 108
    :cond_0
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    #@13
    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    #@16
    move-result v1

    #@17
    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 110
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/DistinctOps$1;->reduce(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/stream/Node;

    #@20
    move-result-object v0

    #@21
    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    #@24
    move-result-object v0

    #@25
    return-object v0

    #@26
    .line 114
    :cond_1
    new-instance v0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;

    #@28
    invoke-virtual {p1, p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {v0, v1}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Ljava/util/Spliterator;)V

    #@2f
    return-object v0
.end method

.method public opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<TT;>;)",
            "Ljava/util/stream/Sink",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 120
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 122
    sget-object v0, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 123
    return-object p2

    #@c
    .line 124
    :cond_0
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 125
    new-instance v0, Ljava/util/stream/DistinctOps$1$1;

    #@16
    invoke-direct {v0, p0, p2}, Ljava/util/stream/DistinctOps$1$1;-><init>(Ljava/util/stream/DistinctOps$1;Ljava/util/stream/Sink;)V

    #@19
    return-object v0

    #@1a
    .line 156
    :cond_1
    new-instance v0, Ljava/util/stream/DistinctOps$1$2;

    #@1c
    invoke-direct {v0, p0, p2}, Ljava/util/stream/DistinctOps$1$2;-><init>(Ljava/util/stream/DistinctOps$1;Ljava/util/stream/Sink;)V

    #@1f
    return-object v0
.end method

.method reduce(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/stream/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 62
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v1, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;

    #@2
    invoke-direct {v1}, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;-><init>()V

    #@5
    new-instance v2, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl1;

    #@7
    invoke-direct {v2}, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl1;-><init>()V

    #@a
    .line 63
    new-instance v3, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl2;

    #@c
    invoke-direct {v3}, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl2;-><init>()V

    #@f
    .line 62
    invoke-static {v1, v2, v3}, Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/stream/TerminalOp;

    #@12
    move-result-object v0

    #@13
    .line 64
    .local v0, "reduceOp":Ljava/util/stream/TerminalOp;, "Ljava/util/stream/TerminalOp<TT;Ljava/util/LinkedHashSet<TT;>;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/stream/TerminalOp;->evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/util/Collection;

    #@19
    invoke-static {v1}, Ljava/util/stream/Nodes;->node(Ljava/util/Collection;)Ljava/util/stream/Node;

    #@1c
    move-result-object v1

    #@1d
    return-object v1
.end method
