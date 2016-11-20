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
        "Ljava/util/stream/AbstractShortCircuitTask",
        "<TP_IN;TP_OUT;TR;TK;>;>",
        "Ljava/util/stream/AbstractTask",
        "<TP_IN;TP_OUT;TR;TK;>;"
    }
.end annotation


# instance fields
.field protected volatile canceled:Z

.field protected final sharedResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/stream/AbstractShortCircuitTask;Ljava/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 83
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/AbstractTask;Ljava/util/Spliterator;)V

    #@3
    .line 84
    iget-object v0, p1, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    iput-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    .line 82
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
    .line 70
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    #@3
    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@9
    iput-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    #@b
    .line 69
    return-void
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    #@0
    .prologue
    .line 197
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->canceled:Z

    #@3
    .line 196
    return-void
.end method

.method protected cancelLaterNodes()V
    .locals 4

    #@0
    .prologue
    .line 223
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/util/stream/AbstractShortCircuitTask;

    #@6
    .local v1, "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    move-object v0, p0

    #@7
    .local v0, "node":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :goto_0
    if-eqz v1, :cond_1

    #@9
    .line 227
    iget-object v3, v1, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    #@b
    if-ne v3, v0, :cond_0

    #@d
    .line 228
    iget-object v2, v1, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    #@f
    check-cast v2, Ljava/util/stream/AbstractShortCircuitTask;

    #@11
    .line 229
    .local v2, "rightSibling":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    iget-boolean v3, v2, Ljava/util/stream/AbstractShortCircuitTask;->canceled:Z

    #@13
    if-nez v3, :cond_0

    #@15
    .line 230
    invoke-virtual {v2}, Ljava/util/stream/AbstractShortCircuitTask;->cancel()V

    #@18
    .line 225
    .end local v2    # "rightSibling":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_0
    move-object v0, v1

    #@19
    invoke-virtual {v1}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    #@1c
    move-result-object v1

    #@1d
    .end local v1    # "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    check-cast v1, Ljava/util/stream/AbstractShortCircuitTask;

    #@1f
    .restart local v1    # "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    goto :goto_0

    #@20
    .line 221
    :cond_1
    return-void
.end method

.method public compute()V
    .locals 14

    #@0
    .prologue
    .line 102
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v5, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    #@2
    .line 103
    .local v5, "rs":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-interface {v5}, Ljava/util/Spliterator;->estimateSize()J

    #@5
    move-result-wide v6

    #@6
    .line 104
    .local v6, "sizeEstimate":J
    invoke-virtual {p0, v6, v7}, Ljava/util/stream/AbstractTask;->getTargetSize(J)J

    #@9
    move-result-wide v8

    #@a
    .line 105
    .local v8, "sizeThreshold":J
    const/4 v0, 0x0

    #@b
    .line 106
    .local v0, "forkRight":Z
    move-object v11, p0

    #@c
    .line 107
    .local v11, "task":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    iget-object v10, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    #@e
    .line 109
    .local v10, "sr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TR;>;"
    :goto_0
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    .local v3, "result":Ljava/lang/Object;, "TR;"
    if-nez v3, :cond_0

    #@14
    .line 110
    invoke-virtual {v11}, Ljava/util/stream/AbstractShortCircuitTask;->taskCanceled()Z

    #@17
    move-result v13

    #@18
    if-eqz v13, :cond_1

    #@1a
    .line 111
    invoke-virtual {v11}, Ljava/util/stream/AbstractShortCircuitTask;->getEmptyResult()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    .line 136
    :cond_0
    :goto_1
    invoke-virtual {v11, v3}, Ljava/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    #@21
    .line 137
    invoke-virtual {v11}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    #@24
    .line 101
    return-void

    #@25
    .line 114
    :cond_1
    cmp-long v13, v6, v8

    #@27
    if-lez v13, :cond_2

    #@29
    invoke-interface {v5}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    #@2c
    move-result-object v2

    #@2d
    .local v2, "ls":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    if-nez v2, :cond_3

    #@2f
    .line 115
    .end local v2    # "ls":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_2
    invoke-virtual {v11}, Ljava/util/stream/AbstractTask;->doLeaf()Ljava/lang/Object;

    #@32
    move-result-object v3

    #@33
    goto :goto_1

    #@34
    .line 119
    .restart local v2    # "ls":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_3
    invoke-virtual {v11, v2}, Ljava/util/stream/AbstractTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;

    #@37
    move-result-object v1

    #@38
    check-cast v1, Ljava/util/stream/AbstractShortCircuitTask;

    #@3a
    .local v1, "leftChild":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    iput-object v1, v11, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    #@3c
    .line 120
    invoke-virtual {v11, v5}, Ljava/util/stream/AbstractTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;

    #@3f
    move-result-object v4

    #@40
    check-cast v4, Ljava/util/stream/AbstractShortCircuitTask;

    #@42
    .local v4, "rightChild":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    iput-object v4, v11, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    #@44
    .line 121
    const/4 v13, 0x1

    #@45
    invoke-virtual {v11, v13}, Ljava/util/concurrent/CountedCompleter;->setPendingCount(I)V

    #@48
    .line 122
    if-eqz v0, :cond_4

    #@4a
    .line 123
    const/4 v0, 0x0

    #@4b
    .line 124
    move-object v5, v2

    #@4c
    .line 125
    move-object v11, v1

    #@4d
    .line 126
    move-object v12, v4

    #@4e
    .line 133
    .local v12, "taskToFork":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :goto_2
    invoke-virtual {v12}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@51
    .line 134
    invoke-interface {v5}, Ljava/util/Spliterator;->estimateSize()J

    #@54
    move-result-wide v6

    #@55
    goto :goto_0

    #@56
    .line 129
    .end local v12    # "taskToFork":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_4
    const/4 v0, 0x1

    #@57
    .line 130
    move-object v11, v4

    #@58
    .line 131
    move-object v12, v1

    #@59
    .restart local v12    # "taskToFork":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    goto :goto_2
.end method

.method protected abstract getEmptyResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public getLocalResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    #@0
    .prologue
    .line 185
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->isRoot()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 186
    iget-object v1, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    #@8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    .line 187
    .local v0, "answer":Ljava/lang/Object;, "TR;"
    if-nez v0, :cond_0

    #@e
    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->getEmptyResult()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .end local v0    # "answer":Ljava/lang/Object;, "TR;"
    :cond_0
    return-object v0

    #@13
    .line 190
    :cond_1
    invoke-super {p0}, Ljava/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    return-object v1
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
    .line 176
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected setLocalResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "localResult":Ljava/lang/Object;, "TR;"
    const/4 v1, 0x0

    #@1
    .line 163
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->isRoot()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 164
    if-eqz p1, :cond_0

    #@9
    .line 165
    iget-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    #@b
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e
    .line 162
    :cond_0
    :goto_0
    return-void

    #@f
    .line 168
    :cond_1
    invoke-super {p0, p1}, Ljava/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    #@12
    goto :goto_0
.end method

.method protected shortCircuit(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    const/4 v1, 0x0

    #@1
    .line 151
    if-eqz p1, :cond_0

    #@3
    .line 152
    iget-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@8
    .line 150
    :cond_0
    return-void
.end method

.method protected taskCanceled()Z
    .locals 2

    #@0
    .prologue
    .line 207
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-boolean v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->canceled:Z

    #@2
    .line 208
    .local v0, "cancel":Z
    if-nez v0, :cond_0

    #@4
    .line 209
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/util/stream/AbstractShortCircuitTask;

    #@a
    .local v1, "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :goto_0
    if-nez v0, :cond_0

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 210
    iget-boolean v0, v1, Ljava/util/stream/AbstractShortCircuitTask;->canceled:Z

    #@10
    .line 209
    invoke-virtual {v1}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    #@13
    move-result-object v1

    #@14
    .end local v1    # "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    check-cast v1, Ljava/util/stream/AbstractShortCircuitTask;

    #@16
    .restart local v1    # "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    goto :goto_0

    #@17
    .line 213
    .end local v1    # "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_0
    return v0
.end method
