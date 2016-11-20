.class final Ljava/util/stream/MatchOps$MatchTask;
.super Ljava/util/stream/AbstractShortCircuitTask;
.source "MatchOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/MatchOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MatchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractShortCircuitTask",
        "<TP_IN;TP_OUT;",
        "Ljava/lang/Boolean;",
        "Ljava/util/stream/MatchOps$MatchTask",
        "<TP_IN;TP_OUT;>;>;"
    }
.end annotation


# instance fields
.field private final op:Ljava/util/stream/MatchOps$MatchOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/MatchOps$MatchOp",
            "<TP_OUT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/stream/MatchOps$MatchOp;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/MatchOps$MatchOp",
            "<TP_OUT;>;",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 287
    .local p0, "this":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    .local p1, "op":Ljava/util/stream/MatchOps$MatchOp;, "Ljava/util/stream/MatchOps$MatchOp<TP_OUT;>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p2, p3}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    #@3
    .line 288
    iput-object p1, p0, Ljava/util/stream/MatchOps$MatchTask;->op:Ljava/util/stream/MatchOps$MatchOp;

    #@5
    .line 286
    return-void
.end method

.method constructor <init>(Ljava/util/stream/MatchOps$MatchTask;Ljava/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/MatchOps$MatchTask",
            "<TP_IN;TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 295
    .local p0, "this":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    .local p1, "parent":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/AbstractShortCircuitTask;Ljava/util/Spliterator;)V

    #@3
    .line 296
    iget-object v0, p1, Ljava/util/stream/MatchOps$MatchTask;->op:Ljava/util/stream/MatchOps$MatchOp;

    #@5
    iput-object v0, p0, Ljava/util/stream/MatchOps$MatchTask;->op:Ljava/util/stream/MatchOps$MatchOp;

    #@7
    .line 294
    return-void
.end method


# virtual methods
.method protected doLeaf()Ljava/lang/Boolean;
    .locals 4

    #@0
    .prologue
    .line 306
    .local p0, "this":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    iget-object v2, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    #@2
    iget-object v1, p0, Ljava/util/stream/MatchOps$MatchTask;->op:Ljava/util/stream/MatchOps$MatchOp;

    #@4
    iget-object v1, v1, Ljava/util/stream/MatchOps$MatchOp;->sinkSupplier:Ljava/util/function/Supplier;

    #@6
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/util/stream/MatchOps$BooleanTerminalSink;

    #@c
    iget-object v3, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    #@e
    invoke-virtual {v2, v1, v3}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/util/stream/MatchOps$BooleanTerminalSink;

    #@14
    invoke-virtual {v1}, Ljava/util/stream/MatchOps$BooleanTerminalSink;->getAndClearState()Z

    #@17
    move-result v0

    #@18
    .line 307
    .local v0, "b":Z
    iget-object v1, p0, Ljava/util/stream/MatchOps$MatchTask;->op:Ljava/util/stream/MatchOps$MatchOp;

    #@1a
    iget-object v1, v1, Ljava/util/stream/MatchOps$MatchOp;->matchKind:Ljava/util/stream/MatchOps$MatchKind;

    #@1c
    invoke-static {v1}, Ljava/util/stream/MatchOps$MatchKind;->-get0(Ljava/util/stream/MatchOps$MatchKind;)Z

    #@1f
    move-result v1

    #@20
    if-ne v0, v1, :cond_0

    #@22
    .line 308
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {p0, v1}, Ljava/util/stream/AbstractShortCircuitTask;->shortCircuit(Ljava/lang/Object;)V

    #@29
    .line 309
    :cond_0
    const/4 v1, 0x0

    #@2a
    return-object v1
.end method

.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 305
    .local p0, "this":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/MatchOps$MatchTask;->doLeaf()Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected getEmptyResult()Ljava/lang/Boolean;
    .locals 1

    #@0
    .prologue
    .line 314
    .local p0, "this":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/MatchOps$MatchTask;->op:Ljava/util/stream/MatchOps$MatchOp;

    #@2
    iget-object v0, v0, Ljava/util/stream/MatchOps$MatchOp;->matchKind:Ljava/util/stream/MatchOps$MatchKind;

    #@4
    invoke-static {v0}, Ljava/util/stream/MatchOps$MatchKind;->-get0(Ljava/util/stream/MatchOps$MatchKind;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    :cond_0
    const/4 v0, 0x1

    #@11
    goto :goto_0
.end method

.method protected bridge synthetic getEmptyResult()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 313
    .local p0, "this":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/MatchOps$MatchTask;->getEmptyResult()Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bridge synthetic makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;
    .locals 1
    .param p1, "spliterator"    # Ljava/util/Spliterator;

    #@0
    .prologue
    .line 300
    .local p0, "this":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/MatchOps$MatchTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/MatchOps$MatchTask;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected makeChild(Ljava/util/Spliterator;)Ljava/util/stream/MatchOps$MatchTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/stream/MatchOps$MatchTask",
            "<TP_IN;TP_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 301
    .local p0, "this":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/MatchOps$MatchTask;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/stream/MatchOps$MatchTask;-><init>(Ljava/util/stream/MatchOps$MatchTask;Ljava/util/Spliterator;)V

    #@5
    return-object v0
.end method
