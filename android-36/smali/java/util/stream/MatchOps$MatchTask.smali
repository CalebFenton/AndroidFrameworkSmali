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
        "Ljava/util/stream/AbstractShortCircuitTask<",
        "TP_IN;TP_OUT;",
        "Ljava/lang/Boolean;",
        "Ljava/util/stream/MatchOps$MatchTask<",
        "TP_IN;TP_OUT;>;>;"
    }
.end annotation


# instance fields
.field private final blacklist op:Ljava/util/stream/MatchOps$MatchOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/MatchOps$MatchOp<",
            "TP_OUT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/MatchOps$MatchOp;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/MatchOps$MatchOp<",
            "TP_OUT;>;",
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 287
    .local p0, "this":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    .local p1, "op":Ljava/util/stream/MatchOps$MatchOp;, "Ljava/util/stream/MatchOps$MatchOp<TP_OUT;>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p2, p3}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    .line 288
    iput-object p1, p0, Ljava/util/stream/MatchOps$MatchTask;->op:Ljava/util/stream/MatchOps$MatchOp;

    .line 289
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/MatchOps$MatchTask;Ljava/util/Spliterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/MatchOps$MatchTask<",
            "TP_IN;TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 295
    .local p0, "this":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    .local p1, "parent":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/AbstractShortCircuitTask;Ljava/util/Spliterator;)V

    .line 296
    iget-object v0, p1, Ljava/util/stream/MatchOps$MatchTask;->op:Ljava/util/stream/MatchOps$MatchOp;

    iput-object v0, p0, Ljava/util/stream/MatchOps$MatchTask;->op:Ljava/util/stream/MatchOps$MatchOp;

    .line 297
    return-void
.end method


# virtual methods
.method protected blacklist doLeaf()Ljava/lang/Boolean;
    .registers 4

    .line 306
    .local p0, "this":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/MatchOps$MatchTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v1, p0, Ljava/util/stream/MatchOps$MatchTask;->op:Ljava/util/stream/MatchOps$MatchOp;

    iget-object v1, v1, Ljava/util/stream/MatchOps$MatchOp;->sinkSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/MatchOps$BooleanTerminalSink;

    iget-object v2, p0, Ljava/util/stream/MatchOps$MatchTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljava/util/stream/MatchOps$BooleanTerminalSink;

    invoke-virtual {v0}, Ljava/util/stream/MatchOps$BooleanTerminalSink;->getAndClearState()Z

    move-result v0

    .line 307
    .local v0, "b":Z
    iget-object v1, p0, Ljava/util/stream/MatchOps$MatchTask;->op:Ljava/util/stream/MatchOps$MatchOp;

    iget-object v1, v1, Ljava/util/stream/MatchOps$MatchOp;->matchKind:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {v1}, Ljava/util/stream/MatchOps$MatchKind;->-$$Nest$fgetshortCircuitResult(Ljava/util/stream/MatchOps$MatchKind;)Z

    move-result v1

    if-ne v0, v1, :cond_29

    .line 308
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/stream/MatchOps$MatchTask;->shortCircuit(Ljava/lang/Object;)V

    .line 309
    :cond_29
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic blacklist doLeaf()Ljava/lang/Object;
    .registers 2

    .line 277
    .local p0, "this":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/MatchOps$MatchTask;->doLeaf()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getEmptyResult()Ljava/lang/Boolean;
    .registers 2

    .line 314
    .local p0, "this":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/MatchOps$MatchTask;->op:Ljava/util/stream/MatchOps$MatchOp;

    iget-object v0, v0, Ljava/util/stream/MatchOps$MatchOp;->matchKind:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {v0}, Ljava/util/stream/MatchOps$MatchKind;->-$$Nest$fgetshortCircuitResult(Ljava/util/stream/MatchOps$MatchKind;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist getEmptyResult()Ljava/lang/Object;
    .registers 2

    .line 277
    .local p0, "this":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/MatchOps$MatchTask;->getEmptyResult()Ljava/lang/Boolean;

    move-result-object v0

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

    .line 277
    .local p0, "this":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/MatchOps$MatchTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/MatchOps$MatchTask;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist makeChild(Ljava/util/Spliterator;)Ljava/util/stream/MatchOps$MatchTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/stream/MatchOps$MatchTask<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    .line 301
    .local p0, "this":Ljava/util/stream/MatchOps$MatchTask;, "Ljava/util/stream/MatchOps$MatchTask<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/MatchOps$MatchTask;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/MatchOps$MatchTask;-><init>(Ljava/util/stream/MatchOps$MatchTask;Ljava/util/Spliterator;)V

    return-object v0
.end method
