.class final Ljava/util/stream/ReduceOps$ReduceTask;
.super Ljava/util/stream/AbstractTask;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ReduceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReduceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava/util/stream/ReduceOps$AccumulatingSink",
        "<TP_OUT;TR;TS;>;>",
        "Ljava/util/stream/AbstractTask",
        "<TP_IN;TP_OUT;TS;",
        "Ljava/util/stream/ReduceOps$ReduceTask",
        "<TP_IN;TP_OUT;TR;TS;>;>;"
    }
.end annotation


# instance fields
.field private final op:Ljava/util/stream/ReduceOps$ReduceOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/ReduceOps$ReduceOp",
            "<TP_OUT;TR;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/stream/ReduceOps$ReduceOp;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/ReduceOps$ReduceOp",
            "<TP_OUT;TR;TS;>;",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 730
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    .local p1, "op":Ljava/util/stream/ReduceOps$ReduceOp;, "Ljava/util/stream/ReduceOps$ReduceOp<TP_OUT;TR;TS;>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p2, p3}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    #@3
    .line 731
    iput-object p1, p0, Ljava/util/stream/ReduceOps$ReduceTask;->op:Ljava/util/stream/ReduceOps$ReduceOp;

    #@5
    .line 729
    return-void
.end method

.method constructor <init>(Ljava/util/stream/ReduceOps$ReduceTask;Ljava/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/ReduceOps$ReduceTask",
            "<TP_IN;TP_OUT;TR;TS;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 736
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    .local p1, "parent":Ljava/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/AbstractTask;Ljava/util/Spliterator;)V

    #@3
    .line 737
    iget-object v0, p1, Ljava/util/stream/ReduceOps$ReduceTask;->op:Ljava/util/stream/ReduceOps$ReduceOp;

    #@5
    iput-object v0, p0, Ljava/util/stream/ReduceOps$ReduceTask;->op:Ljava/util/stream/ReduceOps$ReduceOp;

    #@7
    .line 735
    return-void
.end method


# virtual methods
.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 746
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$ReduceTask;->doLeaf()Ljava/util/stream/ReduceOps$AccumulatingSink;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected doLeaf()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    #@0
    .prologue
    .line 747
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    #@2
    iget-object v1, p0, Ljava/util/stream/ReduceOps$ReduceTask;->op:Ljava/util/stream/ReduceOps$ReduceOp;

    #@4
    invoke-virtual {v1}, Ljava/util/stream/ReduceOps$ReduceOp;->makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    #@a
    invoke-virtual {v0, v1, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/util/stream/ReduceOps$AccumulatingSink;

    #@10
    return-object v0
.end method

.method protected bridge synthetic makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;
    .locals 1
    .param p1, "spliterator"    # Ljava/util/Spliterator;

    #@0
    .prologue
    .line 741
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$ReduceTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/ReduceOps$ReduceTask;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected makeChild(Ljava/util/Spliterator;)Ljava/util/stream/ReduceOps$ReduceTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/stream/ReduceOps$ReduceTask",
            "<TP_IN;TP_OUT;TR;TS;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 742
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/ReduceOps$ReduceTask;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/stream/ReduceOps$ReduceTask;-><init>(Ljava/util/stream/ReduceOps$ReduceTask;Ljava/util/Spliterator;)V

    #@5
    return-object v0
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 752
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->isLeaf()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 753
    iget-object v1, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    #@8
    check-cast v1, Ljava/util/stream/ReduceOps$ReduceTask;

    #@a
    invoke-virtual {v1}, Ljava/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/util/stream/ReduceOps$AccumulatingSink;

    #@10
    .line 754
    .local v0, "leftResult":Ljava/util/stream/ReduceOps$AccumulatingSink;, "TS;"
    iget-object v1, p0, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    #@12
    check-cast v1, Ljava/util/stream/ReduceOps$ReduceTask;

    #@14
    invoke-virtual {v1}, Ljava/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/util/stream/ReduceOps$AccumulatingSink;

    #@1a
    invoke-interface {v0, v1}, Ljava/util/stream/ReduceOps$AccumulatingSink;->combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V

    #@1d
    .line 755
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    #@20
    .line 758
    .end local v0    # "leftResult":Ljava/util/stream/ReduceOps$AccumulatingSink;, "TS;"
    :cond_0
    invoke-super {p0, p1}, Ljava/util/stream/AbstractTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    #@23
    .line 751
    return-void
.end method
