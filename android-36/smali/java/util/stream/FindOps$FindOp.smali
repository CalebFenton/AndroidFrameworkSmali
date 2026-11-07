.class final Ljava/util/stream/FindOps$FindOp;
.super Ljava/lang/Object;
.source "FindOps.java"

# interfaces
.implements Ljava/util/stream/TerminalOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/FindOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FindOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/TerminalOp<",
        "TT;TO;>;"
    }
.end annotation


# instance fields
.field final blacklist emptyValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field final blacklist opFlags:I

.field final blacklist presentPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final blacklist shape:Ljava/util/stream/StreamShape;

.field final blacklist sinkSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/stream/TerminalSink<",
            "TT;TO;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V
    .registers 8
    .param p1, "mustFindFirst"    # Z
    .param p2, "shape"    # Ljava/util/stream/StreamShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/stream/StreamShape;",
            "TO;",
            "Ljava/util/function/Predicate<",
            "TO;>;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/stream/TerminalSink<",
            "TT;TO;>;>;)V"
        }
    .end annotation

    .line 129
    .local p0, "this":Ljava/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TT;TO;>;"
    .local p3, "emptyValue":Ljava/lang/Object;, "TO;"
    .local p4, "presentPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TO;>;"
    .local p5, "sinkSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/stream/TerminalSink<TT;TO;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget v0, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    goto :goto_b

    :cond_9
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    :goto_b
    or-int/2addr v0, v1

    iput v0, p0, Ljava/util/stream/FindOps$FindOp;->opFlags:I

    .line 131
    iput-object p2, p0, Ljava/util/stream/FindOps$FindOp;->shape:Ljava/util/stream/StreamShape;

    .line 132
    iput-object p3, p0, Ljava/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    .line 133
    iput-object p4, p0, Ljava/util/stream/FindOps$FindOp;->presentPredicate:Ljava/util/function/Predicate;

    .line 134
    iput-object p5, p0, Ljava/util/stream/FindOps$FindOp;->sinkSupplier:Ljava/util/function/Supplier;

    .line 135
    return-void
.end method


# virtual methods
.method public blacklist evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)TO;"
        }
    .end annotation

    .line 159
    .local p0, "this":Ljava/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TT;TO;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    .line 160
    .local v0, "mustFindFirst":Z
    new-instance v1, Ljava/util/stream/FindOps$FindTask;

    invoke-direct {v1, p0, v0, p1, p2}, Ljava/util/stream/FindOps$FindTask;-><init>(Ljava/util/stream/FindOps$FindOp;ZLjava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    invoke-virtual {v1}, Ljava/util/stream/FindOps$FindTask;->invoke()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public blacklist evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TS;>;)TO;"
        }
    .end annotation

    .line 150
    .local p0, "this":Ljava/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TT;TO;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    iget-object v0, p0, Ljava/util/stream/FindOps$FindOp;->sinkSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/TerminalSink;

    invoke-virtual {p1, v0, p2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljava/util/stream/TerminalSink;

    invoke-interface {v0}, Ljava/util/stream/TerminalSink;->get()Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "result":Ljava/lang/Object;, "TO;"
    if-eqz v0, :cond_16

    move-object v1, v0

    goto :goto_18

    :cond_16
    iget-object v1, p0, Ljava/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    :goto_18
    return-object v1
.end method

.method public blacklist getOpFlags()I
    .registers 2

    .line 139
    .local p0, "this":Ljava/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TT;TO;>;"
    iget v0, p0, Ljava/util/stream/FindOps$FindOp;->opFlags:I

    return v0
.end method

.method public blacklist inputShape()Ljava/util/stream/StreamShape;
    .registers 2

    .line 144
    .local p0, "this":Ljava/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TT;TO;>;"
    iget-object v0, p0, Ljava/util/stream/FindOps$FindOp;->shape:Ljava/util/stream/StreamShape;

    return-object v0
.end method
