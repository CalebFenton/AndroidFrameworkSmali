.class abstract Ljava/util/stream/AbstractShortCircuitTask;
.super Ljava/util/stream/AbstractTask;
.source "AbstractShortCircuitTask.java"


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
        "Ljava/util/stream/AbstractShortCircuitTask<",
        "TP_IN;TP_OUT;TR;TK;>;>",
        "Ljava/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;TR;TK;>;"
    }
.end annotation


# instance fields
.field protected volatile blacklist canceled:Z

.field protected final blacklist sharedResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Ljava/util/stream/AbstractShortCircuitTask;Ljava/util/Spliterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/AbstractTask;Ljava/util/Spliterator;)V

    .line 84
    iget-object v0, p1, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    return-void
.end method


# virtual methods
.method protected blacklist cancel()V
    .registers 2

    .line 197
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->canceled:Z

    .line 198
    return-void
.end method

.method protected blacklist cancelLaterNodes()V
    .registers 5

    .line 223
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v0

    check-cast v0, Ljava/util/stream/AbstractShortCircuitTask;

    .local v0, "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    move-object v1, p0

    .line 224
    .local v1, "node":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :goto_7
    if-eqz v0, :cond_21

    .line 227
    iget-object v2, v0, Ljava/util/stream/AbstractShortCircuitTask;->leftChild:Ljava/util/stream/AbstractTask;

    if-ne v2, v1, :cond_18

    .line 228
    iget-object v2, v0, Ljava/util/stream/AbstractShortCircuitTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v2, Ljava/util/stream/AbstractShortCircuitTask;

    .line 229
    .local v2, "rightSibling":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    iget-boolean v3, v2, Ljava/util/stream/AbstractShortCircuitTask;->canceled:Z

    if-nez v3, :cond_18

    .line 230
    invoke-virtual {v2}, Ljava/util/stream/AbstractShortCircuitTask;->cancel()V

    .line 225
    .end local v2    # "rightSibling":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_18
    move-object v1, v0

    invoke-virtual {v0}, Ljava/util/stream/AbstractShortCircuitTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/stream/AbstractShortCircuitTask;

    goto :goto_7

    .line 233
    .end local v0    # "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    .end local v1    # "node":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_21
    return-void
.end method

.method public whitelist test-api compute()V
    .registers 14

    .line 102
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->spliterator:Ljava/util/Spliterator;

    .line 103
    .local v0, "rs":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 104
    .local v1, "sizeEstimate":J
    invoke-virtual {p0, v1, v2}, Ljava/util/stream/AbstractShortCircuitTask;->getTargetSize(J)J

    move-result-wide v3

    .line 105
    .local v3, "sizeThreshold":J
    const/4 v5, 0x0

    .line 106
    .local v5, "forkRight":Z
    move-object v6, p0

    .line 107
    .local v6, "task":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    iget-object v7, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 109
    .local v7, "sr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TR;>;"
    :goto_e
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    .local v9, "result":Ljava/lang/Object;, "TR;"
    if-nez v8, :cond_59

    .line 110
    invoke-virtual {v6}, Ljava/util/stream/AbstractShortCircuitTask;->taskCanceled()Z

    move-result v8

    if-eqz v8, :cond_20

    .line 111
    invoke-virtual {v6}, Ljava/util/stream/AbstractShortCircuitTask;->getEmptyResult()Ljava/lang/Object;

    move-result-object v9

    .line 112
    goto :goto_59

    .line 114
    :cond_20
    cmp-long v8, v1, v3

    if-lez v8, :cond_54

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v8

    move-object v10, v8

    .local v10, "ls":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    if-nez v8, :cond_2c

    goto :goto_54

    .line 119
    :cond_2c
    invoke-virtual {v6, v10}, Ljava/util/stream/AbstractShortCircuitTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;

    move-result-object v8

    check-cast v8, Ljava/util/stream/AbstractShortCircuitTask;

    move-object v11, v8

    .local v11, "leftChild":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    iput-object v8, v6, Ljava/util/stream/AbstractShortCircuitTask;->leftChild:Ljava/util/stream/AbstractTask;

    .line 120
    invoke-virtual {v6, v0}, Ljava/util/stream/AbstractShortCircuitTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;

    move-result-object v8

    check-cast v8, Ljava/util/stream/AbstractShortCircuitTask;

    move-object v12, v8

    .local v12, "rightChild":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    iput-object v8, v6, Ljava/util/stream/AbstractShortCircuitTask;->rightChild:Ljava/util/stream/AbstractTask;

    .line 121
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/util/stream/AbstractShortCircuitTask;->setPendingCount(I)V

    .line 122
    if-eqz v5, :cond_49

    .line 123
    const/4 v5, 0x0

    .line 124
    move-object v0, v10

    .line 125
    move-object v6, v11

    .line 126
    move-object v8, v12

    .local v8, "taskToFork":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    goto :goto_4c

    .line 129
    .end local v8    # "taskToFork":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_49
    const/4 v5, 0x1

    .line 130
    move-object v6, v12

    .line 131
    move-object v8, v11

    .line 133
    .restart local v8    # "taskToFork":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :goto_4c
    invoke-virtual {v8}, Ljava/util/stream/AbstractShortCircuitTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 134
    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 135
    .end local v8    # "taskToFork":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    .end local v11    # "leftChild":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    .end local v12    # "rightChild":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    goto :goto_e

    .line 115
    .end local v10    # "ls":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_54
    :goto_54
    invoke-virtual {v6}, Ljava/util/stream/AbstractShortCircuitTask;->doLeaf()Ljava/lang/Object;

    move-result-object v9

    .line 116
    nop

    .line 136
    :cond_59
    :goto_59
    invoke-virtual {v6, v9}, Ljava/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v6}, Ljava/util/stream/AbstractShortCircuitTask;->tryComplete()V

    .line 138
    return-void
.end method

.method protected abstract blacklist getEmptyResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public blacklist getLocalResult()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 185
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 186
    iget-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "answer":Ljava/lang/Object;, "TR;"
    if-nez v0, :cond_13

    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->getEmptyResult()Ljava/lang/Object;

    move-result-object v1

    goto :goto_14

    :cond_13
    move-object v1, v0

    :goto_14
    return-object v1

    .line 190
    .end local v0    # "answer":Ljava/lang/Object;, "TR;"
    :cond_15
    invoke-super {p0}, Ljava/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 176
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist setLocalResult(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 163
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "localResult":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 164
    if-eqz p1, :cond_12

    .line 165
    iget-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_12

    .line 168
    :cond_f
    invoke-super {p0, p1}, Ljava/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    .line 169
    :cond_12
    :goto_12
    return-void
.end method

.method protected blacklist shortCircuit(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 151
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    if-eqz p1, :cond_8

    .line 152
    iget-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    :cond_8
    return-void
.end method

.method protected blacklist taskCanceled()Z
    .registers 4

    .line 207
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-boolean v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->canceled:Z

    .line 208
    .local v0, "cancel":Z
    if-nez v0, :cond_18

    .line 209
    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v1

    check-cast v1, Ljava/util/stream/AbstractShortCircuitTask;

    .local v1, "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :goto_a
    if-nez v0, :cond_18

    if-eqz v1, :cond_18

    .line 210
    iget-boolean v0, v1, Ljava/util/stream/AbstractShortCircuitTask;->canceled:Z

    .line 209
    invoke-virtual {v1}, Ljava/util/stream/AbstractShortCircuitTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/util/stream/AbstractShortCircuitTask;

    goto :goto_a

    .line 213
    .end local v1    # "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_18
    return v0
.end method
