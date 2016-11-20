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
        "Ljava/util/stream/AbstractTask",
        "<TP_IN;TP_OUT;TR;TK;>;>",
        "Ljava/util/concurrent/CountedCompleter",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final LEAF_TARGET:I


# instance fields
.field protected final helper:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;"
        }
    .end annotation
.end field

.field protected leftChild:Ljava/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private localResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field protected rightChild:Ljava/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected spliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator",
            "<TP_IN;>;"
        }
    .end annotation
.end field

.field protected targetSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 97
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@3
    move-result v0

    #@4
    shl-int/lit8 v0, v0, 0x2

    #@6
    sput v0, Ljava/util/stream/AbstractTask;->LEAF_TARGET:I

    #@8
    .line 87
    return-void
.end method

.method protected constructor <init>(Ljava/util/stream/AbstractTask;Ljava/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 153
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "parent":Ljava/util/stream/AbstractTask;, "TK;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@3
    .line 154
    iput-object p2, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    #@5
    .line 155
    iget-object v0, p1, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    #@7
    iput-object v0, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    #@9
    .line 156
    iget-wide v0, p1, Ljava/util/stream/AbstractTask;->targetSize:J

    #@b
    iput-wide v0, p0, Ljava/util/stream/AbstractTask;->targetSize:J

    #@d
    .line 152
    return-void
.end method

.method protected constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 138
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@4
    .line 139
    iput-object p1, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    #@6
    .line 140
    iput-object p2, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    #@8
    .line 141
    const-wide/16 v0, 0x0

    #@a
    iput-wide v0, p0, Ljava/util/stream/AbstractTask;->targetSize:J

    #@c
    .line 137
    return-void
.end method

.method public static suggestTargetSize(J)J
    .locals 4
    .param p0, "sizeEstimate"    # J

    #@0
    .prologue
    .line 184
    sget v2, Ljava/util/stream/AbstractTask;->LEAF_TARGET:I

    #@2
    int-to-long v2, v2

    #@3
    div-long v0, p0, v2

    #@5
    .line 185
    .local v0, "est":J
    const-wide/16 v2, 0x0

    #@7
    cmp-long v2, v0, v2

    #@9
    if-lez v2, :cond_0

    #@b
    .end local v0    # "est":J
    :goto_0
    return-wide v0

    #@c
    .restart local v0    # "est":J
    :cond_0
    const-wide/16 v0, 0x1

    #@e
    goto :goto_0
.end method


# virtual methods
.method public compute()V
    .locals 12

    #@0
    .prologue
    .line 292
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v4, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    #@2
    .line 293
    .local v4, "rs":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-interface {v4}, Ljava/util/Spliterator;->estimateSize()J

    #@5
    move-result-wide v6

    #@6
    .line 294
    .local v6, "sizeEstimate":J
    invoke-virtual {p0, v6, v7}, Ljava/util/stream/AbstractTask;->getTargetSize(J)J

    #@9
    move-result-wide v8

    #@a
    .line 295
    .local v8, "sizeThreshold":J
    const/4 v0, 0x0

    #@b
    .line 296
    .local v0, "forkRight":Z
    move-object v5, p0

    #@c
    .line 297
    .local v5, "task":Ljava/util/stream/AbstractTask;, "TK;"
    :goto_0
    cmp-long v11, v6, v8

    #@e
    if-lez v11, :cond_1

    #@10
    invoke-interface {v4}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    #@13
    move-result-object v2

    #@14
    .local v2, "ls":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    if-eqz v2, :cond_1

    #@16
    .line 299
    invoke-virtual {v5, v2}, Ljava/util/stream/AbstractTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;

    #@19
    move-result-object v1

    #@1a
    .local v1, "leftChild":Ljava/util/stream/AbstractTask;, "TK;"
    iput-object v1, v5, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    #@1c
    .line 300
    invoke-virtual {v5, v4}, Ljava/util/stream/AbstractTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;

    #@1f
    move-result-object v3

    #@20
    .local v3, "rightChild":Ljava/util/stream/AbstractTask;, "TK;"
    iput-object v3, v5, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    #@22
    .line 301
    const/4 v11, 0x1

    #@23
    invoke-virtual {v5, v11}, Ljava/util/concurrent/CountedCompleter;->setPendingCount(I)V

    #@26
    .line 302
    if-eqz v0, :cond_0

    #@28
    .line 303
    const/4 v0, 0x0

    #@29
    .line 304
    move-object v4, v2

    #@2a
    .line 305
    move-object v5, v1

    #@2b
    .line 306
    move-object v10, v3

    #@2c
    .line 313
    .local v10, "taskToFork":Ljava/util/stream/AbstractTask;, "TK;"
    :goto_1
    invoke-virtual {v10}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@2f
    .line 314
    invoke-interface {v4}, Ljava/util/Spliterator;->estimateSize()J

    #@32
    move-result-wide v6

    #@33
    goto :goto_0

    #@34
    .line 309
    .end local v10    # "taskToFork":Ljava/util/stream/AbstractTask;, "TK;"
    :cond_0
    const/4 v0, 0x1

    #@35
    .line 310
    move-object v5, v3

    #@36
    .line 311
    move-object v10, v1

    #@37
    .restart local v10    # "taskToFork":Ljava/util/stream/AbstractTask;, "TK;"
    goto :goto_1

    #@38
    .line 316
    .end local v1    # "leftChild":Ljava/util/stream/AbstractTask;, "TK;"
    .end local v2    # "ls":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .end local v3    # "rightChild":Ljava/util/stream/AbstractTask;, "TK;"
    .end local v10    # "taskToFork":Ljava/util/stream/AbstractTask;, "TK;"
    :cond_1
    invoke-virtual {v5}, Ljava/util/stream/AbstractTask;->doLeaf()Ljava/lang/Object;

    #@3b
    move-result-object v11

    #@3c
    invoke-virtual {v5, v11}, Ljava/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    #@3f
    .line 317
    invoke-virtual {v5}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    #@42
    .line 291
    return-void
.end method

.method protected abstract doLeaf()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method protected getLocalResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    #@0
    .prologue
    .line 233
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method protected getParent()Ljava/util/stream/AbstractTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 274
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/stream/AbstractTask;

    #@6
    return-object v0
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    #@0
    .prologue
    .line 209
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method protected final getTargetSize(J)J
    .locals 5
    .param p1, "sizeEstimate"    # J

    #@0
    .prologue
    .line 194
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-wide v0, p0, Ljava/util/stream/AbstractTask;->targetSize:J

    #@2
    .local v0, "s":J
    const-wide/16 v2, 0x0

    #@4
    cmp-long v2, v0, v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .end local v0    # "s":J
    :goto_0
    return-wide v0

    #@9
    .line 195
    .restart local v0    # "s":J
    :cond_0
    invoke-static {p1, p2}, Ljava/util/stream/AbstractTask;->suggestTargetSize(J)J

    #@c
    move-result-wide v0

    #@d
    .end local v0    # "s":J
    iput-wide v0, p0, Ljava/util/stream/AbstractTask;->targetSize:J

    #@f
    goto :goto_0
.end method

.method protected isLeaf()Z
    .locals 1

    #@0
    .prologue
    .line 255
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method protected isLeftmostNode()Z
    .locals 3

    #@0
    .prologue
    .line 343
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    move-object v0, p0

    #@1
    .line 344
    .local v0, "node":Ljava/util/stream/AbstractTask;, "TK;"
    :goto_0
    if-eqz v0, :cond_1

    #@3
    .line 345
    invoke-virtual {v0}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    #@6
    move-result-object v1

    #@7
    .line 346
    .local v1, "parent":Ljava/util/stream/AbstractTask;, "TK;"
    if-eqz v1, :cond_0

    #@9
    iget-object v2, v1, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    #@b
    if-eq v2, v0, :cond_0

    #@d
    .line 347
    const/4 v2, 0x0

    #@e
    return v2

    #@f
    .line 348
    :cond_0
    move-object v0, v1

    #@10
    goto :goto_0

    #@11
    .line 350
    .end local v1    # "parent":Ljava/util/stream/AbstractTask;, "TK;"
    :cond_1
    const/4 v2, 0x1

    #@12
    return v2
.end method

.method protected isRoot()Z
    .locals 1

    #@0
    .prologue
    .line 264
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method protected abstract makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)TK;"
        }
    .end annotation
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v0, 0x0

    #@1
    .line 330
    iput-object v0, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    #@3
    .line 331
    iput-object v0, p0, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    #@5
    iput-object v0, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    #@7
    .line 329
    return-void
.end method

.method protected setLocalResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 243
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "localResult":Ljava/lang/Object;, "TR;"
    iput-object p1, p0, Ljava/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    #@2
    .line 242
    return-void
.end method

.method protected setRawResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 222
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    if-eqz p1, :cond_0

    #@2
    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@7
    throw v0

    #@8
    .line 221
    :cond_0
    return-void
.end method
