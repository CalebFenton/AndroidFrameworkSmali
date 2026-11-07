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
        "Ljava/util/stream/ReduceOps$AccumulatingSink<",
        "TP_OUT;TR;TS;>;>",
        "Ljava/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;TS;",
        "Ljava/util/stream/ReduceOps$ReduceTask<",
        "TP_IN;TP_OUT;TR;TS;>;>;"
    }
.end annotation


# instance fields
.field private final blacklist op:Ljava/util/stream/ReduceOps$ReduceOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/ReduceOps$ReduceOp<",
            "TP_OUT;TR;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/ReduceOps$ReduceOp;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/ReduceOps$ReduceOp<",
            "TP_OUT;TR;TS;>;",
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 943
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    .local p1, "op":Ljava/util/stream/ReduceOps$ReduceOp;, "Ljava/util/stream/ReduceOps$ReduceOp<TP_OUT;TR;TS;>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p2, p3}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    .line 944
    iput-object p1, p0, Ljava/util/stream/ReduceOps$ReduceTask;->op:Ljava/util/stream/ReduceOps$ReduceOp;

    .line 945
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/ReduceOps$ReduceTask;Ljava/util/Spliterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/ReduceOps$ReduceTask<",
            "TP_IN;TP_OUT;TR;TS;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 949
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    .local p1, "parent":Ljava/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/AbstractTask;Ljava/util/Spliterator;)V

    .line 950
    iget-object v0, p1, Ljava/util/stream/ReduceOps$ReduceTask;->op:Ljava/util/stream/ReduceOps$ReduceOp;

    iput-object v0, p0, Ljava/util/stream/ReduceOps$ReduceTask;->op:Ljava/util/stream/ReduceOps$ReduceOp;

    .line 951
    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist doLeaf()Ljava/lang/Object;
    .registers 2

    .line 934
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$ReduceTask;->doLeaf()Ljava/util/stream/ReduceOps$AccumulatingSink;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist doLeaf()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 960
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    iget-object v0, p0, Ljava/util/stream/ReduceOps$ReduceTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$ReduceTask;->op:Ljava/util/stream/ReduceOps$ReduceOp;

    invoke-virtual {v1}, Ljava/util/stream/ReduceOps$ReduceOp;->makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;

    move-result-object v1

    iget-object v2, p0, Ljava/util/stream/ReduceOps$ReduceTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljava/util/stream/ReduceOps$AccumulatingSink;

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

    .line 934
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$ReduceTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/ReduceOps$ReduceTask;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist makeChild(Ljava/util/Spliterator;)Ljava/util/stream/ReduceOps$ReduceTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/stream/ReduceOps$ReduceTask<",
            "TP_IN;TP_OUT;TR;TS;>;"
        }
    .end annotation

    .line 955
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/ReduceOps$ReduceTask;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/ReduceOps$ReduceTask;-><init>(Ljava/util/stream/ReduceOps$ReduceTask;Ljava/util/Spliterator;)V

    return-object v0
.end method

.method public whitelist test-api onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 965
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$ReduceTask;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_20

    .line 966
    iget-object v0, p0, Ljava/util/stream/ReduceOps$ReduceTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/ReduceOps$ReduceTask;

    invoke-virtual {v0}, Ljava/util/stream/ReduceOps$ReduceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/ReduceOps$AccumulatingSink;

    .line 967
    .local v0, "leftResult":Ljava/util/stream/ReduceOps$AccumulatingSink;, "TS;"
    iget-object v1, p0, Ljava/util/stream/ReduceOps$ReduceTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/ReduceOps$ReduceTask;

    invoke-virtual {v1}, Ljava/util/stream/ReduceOps$ReduceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {v0, v1}, Ljava/util/stream/ReduceOps$AccumulatingSink;->combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V

    .line 968
    invoke-virtual {p0, v0}, Ljava/util/stream/ReduceOps$ReduceTask;->setLocalResult(Ljava/lang/Object;)V

    .line 971
    .end local v0    # "leftResult":Ljava/util/stream/ReduceOps$AccumulatingSink;, "TS;"
    :cond_20
    invoke-super {p0, p1}, Ljava/util/stream/AbstractTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 972
    return-void
.end method
