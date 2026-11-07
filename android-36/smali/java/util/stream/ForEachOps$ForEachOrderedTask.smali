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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist NEXT:Ljava/lang/invoke/VarHandle;


# instance fields
.field private final blacklist action:Ljava/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Sink<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist helper:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;"
        }
    .end annotation
.end field

.field private blacklist next:Ljava/util/stream/ForEachOps$ForEachOrderedTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;"
        }
    .end annotation
.end field

.field private blacklist node:Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist spliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final blacklist targetSize:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 376
    const-class v0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    :try_start_2
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 377
    .local v1, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-string v2, "next"

    invoke-virtual {v1, v0, v2, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->NEXT:Ljava/lang/invoke/VarHandle;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_10

    .line 380
    .end local v1    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 381
    return-void

    .line 378
    :catch_10
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor blacklist <init>(Ljava/util/stream/ForEachOps$ForEachOrderedTask;Ljava/util/Spliterator;Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;",
            "Ljava/util/Spliterator<",
            "TS;>;",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 397
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p1, "parent":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    .local p3, "leftPredecessor":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 398
    iget-object v0, p1, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 399
    iput-object p2, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    .line 400
    iget-wide v0, p1, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    iput-wide v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    .line 401
    iget-object v0, p1, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    .line 402
    iput-object p3, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    .line 403
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/stream/Sink;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TS;>;",
            "Ljava/util/stream/Sink<",
            "TT;>;)V"
        }
    .end annotation

    .line 386
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    .local p3, "action":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 387
    iput-object p1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 388
    iput-object p2, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    .line 389
    invoke-interface {p2}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    .line 390
    iput-object p3, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    .line 391
    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    .line 392
    return-void
.end method

.method private static blacklist doCompute(Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 411
    .local p0, "task":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    iget-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    .line 412
    .local v0, "rightSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    iget-wide v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    .line 413
    .local v1, "sizeThreshold":J
    const/4 v3, 0x0

    .line 414
    .local v3, "forkRight":Z
    :goto_5
    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-lez v4, :cond_51

    .line 415
    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v4

    move-object v5, v4

    .local v5, "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    if-eqz v4, :cond_51

    .line 416
    new-instance v4, Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    iget-object v6, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v4, p0, v5, v6}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljava/util/stream/ForEachOps$ForEachOrderedTask;Ljava/util/Spliterator;Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V

    .line 418
    .local v4, "leftChild":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    new-instance v6, Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v6, p0, v0, v4}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljava/util/stream/ForEachOps$ForEachOrderedTask;Ljava/util/Spliterator;Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V

    .line 423
    .local v6, "rightChild":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    iput-object v6, v4, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->next:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    .line 428
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    .line 431
    invoke-virtual {v6, v7}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    .line 434
    iget-object v8, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    if-eqz v8, :cond_43

    .line 444
    invoke-virtual {v4, v7}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    .line 447
    sget-object v7, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->NEXT:Ljava/lang/invoke/VarHandle;

    iget-object v8, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-polymorphic {v7, v8, p0, v4}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/stream/ForEachOps$ForEachOrderedTask;Ljava/util/stream/ForEachOps$ForEachOrderedTask;Ljava/util/stream/ForEachOps$ForEachOrderedTask;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_40

    .line 450
    invoke-virtual {p0, v8}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    goto :goto_43

    .line 455
    :cond_40
    invoke-virtual {v4, v8}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    .line 460
    :cond_43
    :goto_43
    if-eqz v3, :cond_4a

    .line 461
    const/4 v3, 0x0

    .line 462
    move-object v0, v5

    .line 463
    move-object p0, v4

    .line 464
    move-object v7, v6

    .local v7, "taskToFork":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    goto :goto_4d

    .line 467
    .end local v7    # "taskToFork":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    :cond_4a
    const/4 v3, 0x1

    .line 468
    move-object p0, v6

    .line 469
    move-object v7, v4

    .line 471
    .restart local v7    # "taskToFork":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    :goto_4d
    invoke-virtual {v7}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 472
    .end local v4    # "leftChild":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .end local v6    # "rightChild":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .end local v7    # "taskToFork":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    goto :goto_5

    .line 482
    .end local v5    # "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    :cond_51
    invoke-virtual {p0}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->getPendingCount()I

    move-result v4

    if-lez v4, :cond_79

    .line 486
    new-instance v4, Ljava/util/stream/ForEachOps$ForEachOrderedTask$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/util/stream/ForEachOps$ForEachOrderedTask$$ExternalSyntheticLambda0;-><init>()V

    .line 487
    .local v4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    iget-object v5, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v6, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 488
    invoke-virtual {v6, v0}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v6

    .line 487
    invoke-virtual {v5, v6, v7, v4}, Ljava/util/stream/PipelineHelper;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v5

    .line 490
    .local v5, "nb":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TT;>;"
    iget-object v6, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v6, v5, v0}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v6

    check-cast v6, Ljava/util/stream/Node$Builder;

    invoke-interface {v6}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    move-result-object v6

    iput-object v6, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava/util/stream/Node;

    .line 491
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    .line 493
    .end local v4    # "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    .end local v5    # "nb":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TT;>;"
    :cond_79
    invoke-virtual {p0}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->tryComplete()V

    .line 494
    return-void
.end method

.method static synthetic blacklist lambda$doCompute$0(I)[Ljava/lang/Object;
    .registers 2
    .param p0, "size"    # I

    .line 486
    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 1

    .line 407
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    invoke-static {p0}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->doCompute(Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V

    .line 408
    return-void
.end method

.method public whitelist test-api onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 498
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    iget-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava/util/stream/Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 500
    iget-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava/util/stream/Node;

    iget-object v2, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    invoke-interface {v0, v2}, Ljava/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    .line 501
    iput-object v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava/util/stream/Node;

    goto :goto_1e

    .line 503
    :cond_f
    iget-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    if-eqz v0, :cond_1e

    .line 505
    iget-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v2, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    iget-object v3, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v0, v2, v3}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    .line 506
    iput-object v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    .line 513
    :cond_1e
    :goto_1e
    sget-object v0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, v1}, Ljava/lang/invoke/VarHandle;->getAndSet([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/stream/ForEachOps$ForEachOrderedTask;Ljava/lang/Void;)Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    move-result-object v0

    .line 514
    .local v0, "leftDescendant":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    if-eqz v0, :cond_2a

    .line 515
    invoke-virtual {v0}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->tryComplete()V

    .line 516
    :cond_2a
    return-void
.end method
