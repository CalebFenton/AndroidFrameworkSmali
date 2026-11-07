.class final Ljava/util/stream/WhileOps$DropWhileTask;
.super Ljava/util/stream/AbstractTask;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/WhileOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DropWhileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;",
        "Ljava/util/stream/Node<",
        "TP_OUT;>;",
        "Ljava/util/stream/WhileOps$DropWhileTask<",
        "TP_IN;TP_OUT;>;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist generator:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;"
        }
    .end annotation
.end field

.field private blacklist index:J

.field private final blacklist isOrdered:Z

.field private final blacklist op:Ljava/util/stream/AbstractPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;"
        }
    .end annotation
.end field

.field private blacklist thisNodeSize:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1318
    const-class v0, Ljava/util/stream/WhileOps;

    return-void
.end method

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

    .line 1334
    .local p0, "this":Ljava/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "op":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TP_OUT;TP_OUT;*>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-direct {p0, p2, p3}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    .line 1335
    nop

    .line 1336
    iput-object p1, p0, Ljava/util/stream/WhileOps$DropWhileTask;->op:Ljava/util/stream/AbstractPipeline;

    .line 1337
    iput-object p4, p0, Ljava/util/stream/WhileOps$DropWhileTask;->generator:Ljava/util/function/IntFunction;

    .line 1338
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p2}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    .line 1339
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/WhileOps$DropWhileTask;Ljava/util/Spliterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/WhileOps$DropWhileTask<",
            "TP_IN;TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 1342
    .local p0, "this":Ljava/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "parent":Ljava/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/AbstractTask;Ljava/util/Spliterator;)V

    .line 1343
    iget-object v0, p1, Ljava/util/stream/WhileOps$DropWhileTask;->op:Ljava/util/stream/AbstractPipeline;

    iput-object v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->op:Ljava/util/stream/AbstractPipeline;

    .line 1344
    iget-object v0, p1, Ljava/util/stream/WhileOps$DropWhileTask;->generator:Ljava/util/function/IntFunction;

    iput-object v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->generator:Ljava/util/function/IntFunction;

    .line 1345
    iget-boolean v0, p1, Ljava/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    iput-boolean v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    .line 1346
    return-void
.end method

.method private blacklist doTruncate(Ljava/util/stream/Node;)Ljava/util/stream/Node;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Node<",
            "TP_OUT;>;)",
            "Ljava/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1413
    .local p0, "this":Ljava/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "input":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    iget-boolean v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    if-eqz v0, :cond_12

    .line 1414
    iget-wide v2, p0, Ljava/util/stream/WhileOps$DropWhileTask;->index:J

    invoke-interface {p1}, Ljava/util/stream/Node;->count()J

    move-result-wide v4

    iget-object v6, p0, Ljava/util/stream/WhileOps$DropWhileTask;->generator:Ljava/util/function/IntFunction;

    move-object v1, p1

    .end local p1    # "input":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    .local v1, "input":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    invoke-interface/range {v1 .. v6}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object p1

    goto :goto_13

    .line 1415
    .end local v1    # "input":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    .restart local p1    # "input":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_12
    move-object v1, p1

    .line 1413
    .end local p1    # "input":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    .restart local v1    # "input":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :goto_13
    return-object p1
.end method

.method private blacklist merge()Ljava/util/stream/Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1395
    .local p0, "this":Ljava/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/WhileOps$DropWhileTask;

    iget-wide v0, v0, Ljava/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    .line 1398
    iget-object v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/WhileOps$DropWhileTask;

    invoke-virtual {v0}, Ljava/util/stream/WhileOps$DropWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    return-object v0

    .line 1400
    :cond_17
    iget-object v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/WhileOps$DropWhileTask;

    iget-wide v0, v0, Ljava/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    .line 1403
    iget-object v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/WhileOps$DropWhileTask;

    invoke-virtual {v0}, Ljava/util/stream/WhileOps$DropWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    return-object v0

    .line 1407
    :cond_2c
    iget-object v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->op:Ljava/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    move-result-object v0

    iget-object v1, p0, Ljava/util/stream/WhileOps$DropWhileTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/WhileOps$DropWhileTask;

    .line 1408
    invoke-virtual {v1}, Ljava/util/stream/WhileOps$DropWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node;

    iget-object v2, p0, Ljava/util/stream/WhileOps$DropWhileTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v2, Ljava/util/stream/WhileOps$DropWhileTask;

    invoke-virtual {v2}, Ljava/util/stream/WhileOps$DropWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Node;

    .line 1407
    invoke-static {v0, v1, v2}, Ljava/util/stream/Nodes;->conc(Ljava/util/stream/StreamShape;Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic blacklist doLeaf()Ljava/lang/Object;
    .registers 2

    .line 1318
    .local p0, "this":Ljava/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$DropWhileTask;->doLeaf()Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final blacklist doLeaf()Ljava/util/stream/Node;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1355
    .local p0, "this":Ljava/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$DropWhileTask;->isRoot()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1358
    .local v0, "isChild":Z
    if-eqz v0, :cond_21

    iget-boolean v2, p0, Ljava/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    if-eqz v2, :cond_21

    sget-object v2, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    iget-object v3, p0, Ljava/util/stream/WhileOps$DropWhileTask;->op:Ljava/util/stream/AbstractPipeline;

    iget v3, v3, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag;->isPreserved(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1359
    iget-object v2, p0, Ljava/util/stream/WhileOps$DropWhileTask;->op:Ljava/util/stream/AbstractPipeline;

    iget-object v3, p0, Ljava/util/stream/WhileOps$DropWhileTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v2, v3}, Ljava/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v2

    goto :goto_23

    .line 1360
    :cond_21
    const-wide/16 v2, -0x1

    :goto_23
    nop

    .line 1361
    .local v2, "sizeIfKnown":J
    iget-object v4, p0, Ljava/util/stream/WhileOps$DropWhileTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v5, p0, Ljava/util/stream/WhileOps$DropWhileTask;->generator:Ljava/util/function/IntFunction;

    invoke-virtual {v4, v2, v3, v5}, Ljava/util/stream/PipelineHelper;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v4

    .line 1363
    .local v4, "builder":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TP_OUT;>;"
    iget-object v5, p0, Ljava/util/stream/WhileOps$DropWhileTask;->op:Ljava/util/stream/AbstractPipeline;

    check-cast v5, Ljava/util/stream/WhileOps$DropWhileOp;

    .line 1366
    .local v5, "dropOp":Ljava/util/stream/WhileOps$DropWhileOp;, "Ljava/util/stream/WhileOps$DropWhileOp<TP_OUT;>;"
    iget-boolean v6, p0, Ljava/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    if-eqz v6, :cond_37

    if-eqz v0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    invoke-interface {v5, v4, v1}, Ljava/util/stream/WhileOps$DropWhileOp;->opWrapSink(Ljava/util/stream/Sink;Z)Ljava/util/stream/WhileOps$DropWhileSink;

    move-result-object v1

    .line 1367
    .local v1, "s":Ljava/util/stream/WhileOps$DropWhileSink;, "Ljava/util/stream/WhileOps$DropWhileSink<TP_OUT;>;"
    iget-object v6, p0, Ljava/util/stream/WhileOps$DropWhileTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v7, p0, Ljava/util/stream/WhileOps$DropWhileTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v6, v1, v7}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    .line 1369
    invoke-interface {v4}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    move-result-object v6

    .line 1370
    .local v6, "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    invoke-interface {v6}, Ljava/util/stream/Node;->count()J

    move-result-wide v7

    iput-wide v7, p0, Ljava/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    .line 1371
    invoke-interface {v1}, Ljava/util/stream/WhileOps$DropWhileSink;->getDropCount()J

    move-result-wide v7

    iput-wide v7, p0, Ljava/util/stream/WhileOps$DropWhileTask;->index:J

    .line 1372
    return-object v6
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

    .line 1318
    .local p0, "this":Ljava/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/WhileOps$DropWhileTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/WhileOps$DropWhileTask;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist makeChild(Ljava/util/Spliterator;)Ljava/util/stream/WhileOps$DropWhileTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/stream/WhileOps$DropWhileTask<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    .line 1350
    .local p0, "this":Ljava/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/WhileOps$DropWhileTask;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/WhileOps$DropWhileTask;-><init>(Ljava/util/stream/WhileOps$DropWhileTask;Ljava/util/Spliterator;)V

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

    .line 1377
    .local p0, "this":Ljava/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$DropWhileTask;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1378
    iget-boolean v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    if-eqz v0, :cond_29

    .line 1379
    iget-object v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/WhileOps$DropWhileTask;

    iget-wide v0, v0, Ljava/util/stream/WhileOps$DropWhileTask;->index:J

    iput-wide v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->index:J

    .line 1382
    iget-wide v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->index:J

    iget-object v2, p0, Ljava/util/stream/WhileOps$DropWhileTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v2, Ljava/util/stream/WhileOps$DropWhileTask;

    iget-wide v2, v2, Ljava/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_29

    .line 1383
    iget-wide v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->index:J

    iget-object v2, p0, Ljava/util/stream/WhileOps$DropWhileTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v2, Ljava/util/stream/WhileOps$DropWhileTask;

    iget-wide v2, v2, Ljava/util/stream/WhileOps$DropWhileTask;->index:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->index:J

    .line 1386
    :cond_29
    iget-object v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/WhileOps$DropWhileTask;

    iget-wide v0, v0, Ljava/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    iget-object v2, p0, Ljava/util/stream/WhileOps$DropWhileTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v2, Ljava/util/stream/WhileOps$DropWhileTask;

    iget-wide v2, v2, Ljava/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    .line 1387
    invoke-direct {p0}, Ljava/util/stream/WhileOps$DropWhileTask;->merge()Ljava/util/stream/Node;

    move-result-object v0

    .line 1388
    .local v0, "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$DropWhileTask;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-direct {p0, v0}, Ljava/util/stream/WhileOps$DropWhileTask;->doTruncate(Ljava/util/stream/Node;)Ljava/util/stream/Node;

    move-result-object v1

    goto :goto_48

    :cond_47
    move-object v1, v0

    :goto_48
    invoke-virtual {p0, v1}, Ljava/util/stream/WhileOps$DropWhileTask;->setLocalResult(Ljava/lang/Object;)V

    .line 1391
    .end local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_4b
    invoke-super {p0, p1}, Ljava/util/stream/AbstractTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 1392
    return-void
.end method
