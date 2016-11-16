.class final Ljava/util/stream/ForEachOps$ForEachOrderedTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ForEachOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachOrderedTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/ForEachOps$ForEachOrderedTask$-void_doCompute_java_util_stream_ForEachOps$ForEachOrderedTask_task_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountedCompleter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final action:Ljava/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Sink",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final completionMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask",
            "<TS;TT;>;",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask",
            "<TS;TT;>;>;"
        }
    .end annotation
.end field

.field private final helper:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field private node:Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field private spliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final targetSize:J


# direct methods
.method static synthetic -java_util_stream_ForEachOps$ForEachOrderedTask_lambda$1(I)[Ljava/lang/Object;
    .locals 1
    .param p0, "size"    # I

    #@0
    .prologue
    .line 476
    new-array v0, p0, [Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method constructor <init>(Ljava/util/stream/ForEachOps$ForEachOrderedTask;Ljava/util/Spliterator;Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask",
            "<TS;TT;>;",
            "Ljava/util/Spliterator",
            "<TS;>;",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask",
            "<TS;TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 389
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p1, "parent":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    .local p3, "leftPredecessor":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@3
    .line 390
    iget-object v0, p1, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    #@5
    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    #@7
    .line 391
    iput-object p2, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    #@9
    .line 392
    iget-wide v0, p1, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    #@b
    iput-wide v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    #@d
    .line 393
    iget-object v0, p1, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@f
    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@11
    .line 394
    iget-object v0, p1, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    #@13
    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    #@15
    .line 395
    iput-object p3, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    #@17
    .line 388
    return-void
.end method

.method protected constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/stream/Sink;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TS;>;",
            "Ljava/util/stream/Sink",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    .local p3, "action":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 376
    invoke-direct {p0, v3}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@4
    .line 377
    iput-object p1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    #@6
    .line 378
    iput-object p2, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    #@8
    .line 379
    invoke-interface {p2}, Ljava/util/Spliterator;->estimateSize()J

    #@b
    move-result-wide v0

    #@c
    invoke-static {v0, v1}, Ljava/util/stream/AbstractTask;->suggestTargetSize(J)J

    #@f
    move-result-wide v0

    #@10
    iput-wide v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    #@12
    .line 381
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@14
    sget v1, Ljava/util/stream/AbstractTask;->LEAF_TARGET:I

    #@16
    shl-int/lit8 v1, v1, 0x1

    #@18
    const/16 v2, 0x10

    #@1a
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@1d
    move-result v1

    #@1e
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@21
    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@23
    .line 382
    iput-object p3, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    #@25
    .line 383
    iput-object v3, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    #@27
    .line 375
    return-void
.end method

.method private static doCompute(Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask",
            "<TS;TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "task":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    const/4 v13, -0x1

    #@1
    const/4 v14, 0x0

    #@2
    const/4 v12, 0x1

    #@3
    .line 404
    iget-object v6, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    #@5
    .line 405
    .local v6, "rightSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    iget-wide v8, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    #@7
    .line 406
    .local v8, "sizeThreshold":J
    const/4 v0, 0x0

    #@8
    .line 407
    .local v0, "forkRight":Z
    :goto_0
    invoke-interface {v6}, Ljava/util/Spliterator;->estimateSize()J

    #@b
    move-result-wide v10

    #@c
    cmp-long v10, v10, v8

    #@e
    if-lez v10, :cond_3

    #@10
    .line 408
    invoke-interface {v6}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    #@13
    move-result-object v3

    #@14
    .local v3, "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    if-eqz v3, :cond_3

    #@16
    .line 410
    new-instance v2, Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    #@18
    iget-object v10, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    #@1a
    invoke-direct {v2, p0, v3, v10}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljava/util/stream/ForEachOps$ForEachOrderedTask;Ljava/util/Spliterator;Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V

    #@1d
    .line 412
    .local v2, "leftChild":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    new-instance v5, Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    #@1f
    invoke-direct {v5, p0, v6, v2}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljava/util/stream/ForEachOps$ForEachOrderedTask;Ljava/util/Spliterator;Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V

    #@22
    .line 417
    .local v5, "rightChild":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    invoke-virtual {p0, v12}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@25
    .line 420
    invoke-virtual {v5, v12}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@28
    .line 421
    iget-object v10, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2a
    invoke-virtual {v10, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 424
    iget-object v10, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    #@2f
    if-eqz v10, :cond_0

    #@31
    .line 434
    invoke-virtual {v2, v12}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@34
    .line 437
    iget-object v10, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@36
    iget-object v11, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    #@38
    invoke-virtual {v10, v11, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3b
    move-result v10

    #@3c
    if-eqz v10, :cond_1

    #@3e
    .line 440
    invoke-virtual {p0, v13}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@41
    .line 450
    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    #@43
    .line 451
    const/4 v0, 0x0

    #@44
    .line 452
    move-object v6, v3

    #@45
    .line 453
    move-object p0, v2

    #@46
    .line 454
    move-object v7, v5

    #@47
    .line 461
    .local v7, "taskToFork":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    :goto_2
    invoke-virtual {v7}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@4a
    goto :goto_0

    #@4b
    .line 445
    .end local v7    # "taskToFork":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    :cond_1
    invoke-virtual {v2, v13}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@4e
    goto :goto_1

    #@4f
    .line 457
    :cond_2
    const/4 v0, 0x1

    #@50
    .line 458
    move-object p0, v5

    #@51
    .line 459
    move-object v7, v2

    #@52
    .restart local v7    # "taskToFork":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    goto :goto_2

    #@53
    .line 472
    .end local v2    # "leftChild":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .end local v3    # "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    .end local v5    # "rightChild":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .end local v7    # "taskToFork":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    #@56
    move-result v10

    #@57
    if-lez v10, :cond_4

    #@59
    .line 476
    new-instance v1, Ljava/util/stream/ForEachOps$ForEachOrderedTask$-void_doCompute_java_util_stream_ForEachOps$ForEachOrderedTask_task_LambdaImpl0;

    #@5b
    invoke-direct {v1}, Ljava/util/stream/ForEachOps$ForEachOrderedTask$-void_doCompute_java_util_stream_ForEachOps$ForEachOrderedTask_task_LambdaImpl0;-><init>()V

    #@5e
    .line 477
    .local v1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    iget-object v10, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    #@60
    .line 478
    iget-object v11, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    #@62
    invoke-virtual {v11, v6}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    #@65
    move-result-wide v12

    #@66
    .line 477
    invoke-virtual {v10, v12, v13, v1}, Ljava/util/stream/PipelineHelper;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    #@69
    move-result-object v4

    #@6a
    .line 480
    .local v4, "nb":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TT;>;"
    iget-object v10, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    #@6c
    invoke-virtual {v10, v4, v6}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    #@6f
    move-result-object v10

    #@70
    check-cast v10, Ljava/util/stream/Node$Builder;

    #@72
    invoke-interface {v10}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    #@75
    move-result-object v10

    #@76
    iput-object v10, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava/util/stream/Node;

    #@78
    .line 481
    iput-object v14, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    #@7a
    .line 483
    .end local v1    # "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    .end local v4    # "nb":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TT;>;"
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    #@7d
    .line 403
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 0

    #@0
    .prologue
    .line 400
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    invoke-static {p0}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->doCompute(Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V

    #@3
    .line 399
    return-void
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v4, 0x0

    #@1
    .line 488
    iget-object v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava/util/stream/Node;

    #@3
    if-eqz v1, :cond_2

    #@5
    .line 490
    iget-object v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava/util/stream/Node;

    #@7
    iget-object v2, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    #@9
    invoke-interface {v1, v2}, Ljava/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    #@c
    .line 491
    iput-object v4, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava/util/stream/Node;

    #@e
    .line 503
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@10
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    #@16
    .line 504
    .local v0, "leftDescendant":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    if-eqz v0, :cond_1

    #@18
    .line 505
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    #@1b
    .line 487
    :cond_1
    return-void

    #@1c
    .line 493
    .end local v0    # "leftDescendant":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    :cond_2
    iget-object v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 495
    iget-object v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    #@22
    iget-object v2, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    #@24
    iget-object v3, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    #@26
    invoke-virtual {v1, v2, v3}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    #@29
    .line 496
    iput-object v4, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    #@2b
    goto :goto_0
.end method
