.class final Ljava/util/stream/WhileOps$TakeWhileTask;
.super Ljava/util/stream/AbstractShortCircuitTask;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/WhileOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TakeWhileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractShortCircuitTask<",
        "TP_IN;TP_OUT;",
        "Ljava/util/stream/Node<",
        "TP_OUT;>;",
        "Ljava/util/stream/WhileOps$TakeWhileTask<",
        "TP_IN;TP_OUT;>;>;"
    }
.end annotation


# instance fields
.field private volatile blacklist completed:Z

.field private final blacklist generator:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;"
        }
    .end annotation
.end field

.field private final blacklist isOrdered:Z

.field private final blacklist op:Ljava/util/stream/AbstractPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;"
        }
    .end annotation
.end field

.field private blacklist shortCircuited:Z

.field private blacklist thisNodeSize:J


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;",
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;)V"
        }
    .end annotation

    .line 1204
    .local p0, "this":Ljava/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "op":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TP_OUT;TP_OUT;*>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-direct {p0, p2, p3}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    .line 1205
    iput-object p1, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->op:Ljava/util/stream/AbstractPipeline;

    .line 1206
    iput-object p4, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->generator:Ljava/util/function/IntFunction;

    .line 1207
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p2}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    .line 1208
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/WhileOps$TakeWhileTask;Ljava/util/Spliterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/WhileOps$TakeWhileTask<",
            "TP_IN;TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 1211
    .local p0, "this":Ljava/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "parent":Ljava/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/AbstractShortCircuitTask;Ljava/util/Spliterator;)V

    .line 1212
    iget-object v0, p1, Ljava/util/stream/WhileOps$TakeWhileTask;->op:Ljava/util/stream/AbstractPipeline;

    iput-object v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->op:Ljava/util/stream/AbstractPipeline;

    .line 1213
    iget-object v0, p1, Ljava/util/stream/WhileOps$TakeWhileTask;->generator:Ljava/util/function/IntFunction;

    iput-object v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->generator:Ljava/util/function/IntFunction;

    .line 1214
    iget-boolean v0, p1, Ljava/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    iput-boolean v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    .line 1215
    return-void
.end method


# virtual methods
.method protected blacklist cancel()V
    .registers 2

    .line 1290
    .local p0, "this":Ljava/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractShortCircuitTask;->cancel()V

    .line 1291
    iget-boolean v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->completed:Z

    if-eqz v0, :cond_12

    .line 1294
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$TakeWhileTask;->getEmptyResult()Ljava/util/stream/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/WhileOps$TakeWhileTask;->setLocalResult(Ljava/lang/Object;)V

    .line 1295
    :cond_12
    return-void
.end method

.method protected bridge synthetic blacklist doLeaf()Ljava/lang/Object;
    .registers 2

    .line 1188
    .local p0, "this":Ljava/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$TakeWhileTask;->doLeaf()Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final blacklist doLeaf()Ljava/util/stream/Node;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1229
    .local p0, "this":Ljava/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->helper:Ljava/util/stream/PipelineHelper;

    const-wide/16 v1, -0x1

    iget-object v3, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->generator:Ljava/util/function/IntFunction;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/stream/PipelineHelper;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v0

    .line 1230
    .local v0, "builder":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TP_OUT;>;"
    iget-object v1, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->op:Ljava/util/stream/AbstractPipeline;

    iget-object v2, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v2}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/stream/AbstractPipeline;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v1

    .line 1232
    .local v1, "s":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    iget-object v2, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v3, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v3, v1}, Ljava/util/stream/PipelineHelper;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v3

    iget-object v4, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v2, v3, v4}, Ljava/util/stream/PipelineHelper;->copyIntoWithCancel(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Z

    move-result v2

    iput-boolean v2, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    if-eqz v2, :cond_2b

    .line 1235
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$TakeWhileTask;->cancelLaterNodes()V

    .line 1238
    :cond_2b
    invoke-interface {v0}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    move-result-object v2

    .line 1239
    .local v2, "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    invoke-interface {v2}, Ljava/util/stream/Node;->count()J

    move-result-wide v3

    iput-wide v3, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    .line 1240
    return-object v2
.end method

.method protected bridge synthetic blacklist getEmptyResult()Ljava/lang/Object;
    .registers 2

    .line 1188
    .local p0, "this":Ljava/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$TakeWhileTask;->getEmptyResult()Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final blacklist getEmptyResult()Ljava/util/stream/Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1224
    .local p0, "this":Ljava/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->op:Ljava/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Nodes;->emptyNode(Ljava/util/stream/StreamShape;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1188
    .local p0, "this":Ljava/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/WhileOps$TakeWhileTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/WhileOps$TakeWhileTask;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist makeChild(Ljava/util/Spliterator;)Ljava/util/stream/WhileOps$TakeWhileTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/stream/WhileOps$TakeWhileTask<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    .line 1219
    .local p0, "this":Ljava/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/WhileOps$TakeWhileTask;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/WhileOps$TakeWhileTask;-><init>(Ljava/util/stream/WhileOps$TakeWhileTask;Ljava/util/Spliterator;)V

    return-object v0
.end method

.method blacklist merge()Ljava/util/stream/Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1271
    .local p0, "this":Ljava/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/WhileOps$TakeWhileTask;

    iget-wide v0, v0, Ljava/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    .line 1274
    iget-object v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v0}, Ljava/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    return-object v0

    .line 1276
    :cond_17
    iget-object v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/WhileOps$TakeWhileTask;

    iget-wide v0, v0, Ljava/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    .line 1279
    iget-object v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v0}, Ljava/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    return-object v0

    .line 1283
    :cond_2c
    iget-object v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->op:Ljava/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    move-result-object v0

    iget-object v1, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/WhileOps$TakeWhileTask;

    .line 1284
    invoke-virtual {v1}, Ljava/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node;

    iget-object v2, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v2, Ljava/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v2}, Ljava/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Node;

    .line 1283
    invoke-static {v0, v1, v2}, Ljava/util/stream/Nodes;->conc(Ljava/util/stream/StreamShape;Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 1245
    .local p0, "this":Ljava/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$TakeWhileTask;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1247
    iget-object v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/WhileOps$TakeWhileTask;

    iget-boolean v0, v0, Ljava/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    iget-object v1, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/WhileOps$TakeWhileTask;

    iget-boolean v1, v1, Ljava/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    .line 1248
    iget-boolean v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->canceled:Z

    if-eqz v0, :cond_26

    .line 1249
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    .line 1250
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$TakeWhileTask;->getEmptyResult()Ljava/util/stream/Node;

    move-result-object v0

    .local v0, "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_58

    .line 1252
    .end local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_26
    iget-boolean v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/WhileOps$TakeWhileTask;

    iget-boolean v0, v0, Ljava/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    if-eqz v0, :cond_45

    .line 1255
    iget-object v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/WhileOps$TakeWhileTask;

    iget-wide v0, v0, Ljava/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    iput-wide v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    .line 1256
    iget-object v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v0}, Ljava/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    .restart local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_58

    .line 1259
    .end local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_45
    iget-object v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/WhileOps$TakeWhileTask;

    iget-wide v0, v0, Ljava/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    iget-object v2, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v2, Ljava/util/stream/WhileOps$TakeWhileTask;

    iget-wide v2, v2, Ljava/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    .line 1260
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$TakeWhileTask;->merge()Ljava/util/stream/Node;

    move-result-object v0

    .line 1263
    .restart local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :goto_58
    invoke-virtual {p0, v0}, Ljava/util/stream/WhileOps$TakeWhileTask;->setLocalResult(Ljava/lang/Object;)V

    .line 1266
    .end local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_5b
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/WhileOps$TakeWhileTask;->completed:Z

    .line 1267
    invoke-super {p0, p1}, Ljava/util/stream/AbstractShortCircuitTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 1268
    return-void
.end method
