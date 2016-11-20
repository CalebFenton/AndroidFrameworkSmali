.class interface abstract Ljava/util/stream/TerminalOp;
.super Ljava/lang/Object;
.source "TerminalOp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TE_IN;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)TR;"
        }
    .end annotation

    #@0
    .prologue
    .line 82
    .local p0, "this":Ljava/util/stream/TerminalOp;, "Ljava/util/stream/TerminalOp<TE_IN;TR;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TE_IN;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, "{0} triggering TerminalOp.evaluateParallel serial default"

    #@b
    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@e
    .line 84
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/stream/TerminalOp;->evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public abstract evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TE_IN;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)TR;"
        }
    .end annotation
.end method

.method public getOpFlags()I
    .locals 1

    #@0
    .prologue
    .line 66
    .local p0, "this":Ljava/util/stream/TerminalOp;, "Ljava/util/stream/TerminalOp<TE_IN;TR;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public inputShape()Ljava/util/stream/StreamShape;
    .locals 1

    #@0
    .prologue
    .line 53
    .local p0, "this":Ljava/util/stream/TerminalOp;, "Ljava/util/stream/TerminalOp<TE_IN;TR;>;"
    sget-object v0, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    #@2
    return-object v0
.end method
