.class abstract Ljava/util/stream/AbstractTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "AbstractTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;TR;TK;>;>",
        "Ljava/util/concurrent/CountedCompleter<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final blacklist LEAF_TARGET:I


# instance fields
.field protected final blacklist helper:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;"
        }
    .end annotation
.end field

.field protected blacklist leftChild:Ljava/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private blacklist localResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field protected blacklist rightChild:Ljava/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected blacklist spliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TP_IN;>;"
        }
    .end annotation
.end field

.field protected blacklist targetSize:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 92
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    sput v0, Ljava/util/stream/AbstractTask;->LEAF_TARGET:I

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/util/stream/AbstractTask;Ljava/util/Spliterator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "parent":Ljava/util/stream/AbstractTask;, "TK;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 149
    iput-object p2, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    .line 150
    iget-object v0, p1, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    iput-object v0, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 151
    iget-wide v0, p1, Ljava/util/stream/AbstractTask;->targetSize:J

    iput-wide v0, p0, Ljava/util/stream/AbstractTask;->targetSize:J

    .line 152
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 133
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 134
    iput-object p1, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 135
    iput-object p2, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/stream/AbstractTask;->targetSize:J

    .line 137
    return-void
.end method

.method public static blacklist getLeafTarget()I
    .registers 2

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 162
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_16

    .line 163
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinWorkerThread;->getPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool;->getParallelism()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    return v1

    .line 166
    :cond_16
    sget v1, Ljava/util/stream/AbstractTask;->LEAF_TARGET:I

    return v1
.end method

.method public static blacklist suggestTargetSize(J)J
    .registers 6
    .param p0, "sizeEstimate"    # J

    .line 195
    invoke-static {}, Ljava/util/stream/AbstractTask;->getLeafTarget()I

    move-result v0

    int-to-long v0, v0

    div-long v0, p0, v0

    .line 196
    .local v0, "est":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_f

    move-wide v2, v0

    goto :goto_11

    :cond_f
    const-wide/16 v2, 0x1

    :goto_11
    return-wide v2
.end method


# virtual methods
.method public whitelist test-api compute()V
    .registers 12

    .line 303
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    .line 304
    .local v0, "rs":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 305
    .local v1, "sizeEstimate":J
    invoke-virtual {p0, v1, v2}, Ljava/util/stream/AbstractTask;->getTargetSize(J)J

    move-result-wide v3

    .line 306
    .local v3, "sizeThreshold":J
    const/4 v5, 0x0

    .line 307
    .local v5, "forkRight":Z
    move-object v6, p0

    .line 308
    .local v6, "task":Ljava/util/stream/AbstractTask;, "TK;"
    :goto_c
    cmp-long v7, v1, v3

    if-lez v7, :cond_3b

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v7

    move-object v8, v7

    .local v8, "ls":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    if-eqz v7, :cond_3b

    .line 310
    invoke-virtual {v6, v8}, Ljava/util/stream/AbstractTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;

    move-result-object v7

    move-object v9, v7

    .local v9, "leftChild":Ljava/util/stream/AbstractTask;, "TK;"
    iput-object v7, v6, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    .line 311
    invoke-virtual {v6, v0}, Ljava/util/stream/AbstractTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;

    move-result-object v7

    move-object v10, v7

    .local v10, "rightChild":Ljava/util/stream/AbstractTask;, "TK;"
    iput-object v7, v6, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    .line 312
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/stream/AbstractTask;->setPendingCount(I)V

    .line 313
    if-eqz v5, :cond_30

    .line 314
    const/4 v5, 0x0

    .line 315
    move-object v0, v8

    .line 316
    move-object v6, v9

    .line 317
    move-object v7, v10

    .local v7, "taskToFork":Ljava/util/stream/AbstractTask;, "TK;"
    goto :goto_33

    .line 320
    .end local v7    # "taskToFork":Ljava/util/stream/AbstractTask;, "TK;"
    :cond_30
    const/4 v5, 0x1

    .line 321
    move-object v6, v10

    .line 322
    move-object v7, v9

    .line 324
    .restart local v7    # "taskToFork":Ljava/util/stream/AbstractTask;, "TK;"
    :goto_33
    invoke-virtual {v7}, Ljava/util/stream/AbstractTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 325
    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 326
    .end local v7    # "taskToFork":Ljava/util/stream/AbstractTask;, "TK;"
    .end local v9    # "leftChild":Ljava/util/stream/AbstractTask;, "TK;"
    .end local v10    # "rightChild":Ljava/util/stream/AbstractTask;, "TK;"
    goto :goto_c

    .line 327
    .end local v8    # "ls":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_3b
    invoke-virtual {v6}, Ljava/util/stream/AbstractTask;->doLeaf()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    .line 328
    invoke-virtual {v6}, Ljava/util/stream/AbstractTask;->tryComplete()V

    .line 329
    return-void
.end method

.method protected abstract blacklist doLeaf()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method protected blacklist getLocalResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 244
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    return-object v0
.end method

.method protected blacklist getParent()Ljava/util/stream/AbstractTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 285
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    check-cast v0, Ljava/util/stream/AbstractTask;

    return-object v0
.end method

.method public whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 220
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    return-object v0
.end method

.method protected final blacklist getTargetSize(J)J
    .registers 9
    .param p1, "sizeEstimate"    # J

    .line 205
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-wide v0, p0, Ljava/util/stream/AbstractTask;->targetSize:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_b

    move-wide v0, v2

    goto :goto_11

    .line 206
    :cond_b
    invoke-static {p1, p2}, Ljava/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/stream/AbstractTask;->targetSize:J

    .line 205
    :goto_11
    return-wide v0
.end method

.method protected blacklist isLeaf()Z
    .registers 2

    .line 266
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected blacklist isLeftmostNode()Z
    .registers 4

    .line 354
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    move-object v0, p0

    .line 355
    .local v0, "node":Ljava/util/stream/AbstractTask;, "TK;"
    :goto_1
    if-eqz v0, :cond_11

    .line 356
    invoke-virtual {v0}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v1

    .line 357
    .local v1, "parent":Ljava/util/stream/AbstractTask;, "TK;"
    if-eqz v1, :cond_f

    iget-object v2, v1, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    if-eq v2, v0, :cond_f

    .line 358
    const/4 v2, 0x0

    return v2

    .line 359
    :cond_f
    move-object v0, v1

    .line 360
    .end local v1    # "parent":Ljava/util/stream/AbstractTask;, "TK;"
    goto :goto_1

    .line 361
    :cond_11
    const/4 v1, 0x1

    return v1
.end method

.method protected blacklist isRoot()Z
    .registers 2

    .line 275
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected abstract blacklist makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)TK;"
        }
    .end annotation
.end method

.method public whitelist test-api onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 341
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    .line 342
    iput-object v0, p0, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    iput-object v0, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    .line 343
    return-void
.end method

.method protected blacklist setLocalResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 254
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "localResult":Ljava/lang/Object;, "TR;"
    iput-object p1, p0, Ljava/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    .line 255
    return-void
.end method

.method protected whitelist test-api setRawResult(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 233
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    if-nez p1, :cond_3

    .line 235
    return-void

    .line 234
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
