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
        "Ljava/util/stream/TerminalOp",
        "<TT;TO;>;"
    }
.end annotation


# instance fields
.field final emptyValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field final mustFindFirst:Z

.field final presentPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final shape:Ljava/util/stream/StreamShape;

.field final sinkSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/stream/TerminalSink",
            "<TT;TO;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V
    .locals 0
    .param p1, "mustFindFirst"    # Z
    .param p2, "shape"    # Ljava/util/stream/StreamShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/stream/StreamShape;",
            "TO;",
            "Ljava/util/function/Predicate",
            "<TO;>;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/stream/TerminalSink",
            "<TT;TO;>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 127
    .local p0, "this":Ljava/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TT;TO;>;"
    .local p3, "emptyValue":Ljava/lang/Object;, "TO;"
    .local p4, "presentPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TO;>;"
    .local p5, "sinkSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/stream/TerminalSink<TT;TO;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 132
    iput-boolean p1, p0, Ljava/util/stream/FindOps$FindOp;->mustFindFirst:Z

    #@5
    .line 133
    iput-object p2, p0, Ljava/util/stream/FindOps$FindOp;->shape:Ljava/util/stream/StreamShape;

    #@7
    .line 134
    iput-object p3, p0, Ljava/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    #@9
    .line 135
    iput-object p4, p0, Ljava/util/stream/FindOps$FindOp;->presentPredicate:Ljava/util/function/Predicate;

    #@b
    .line 136
    iput-object p5, p0, Ljava/util/stream/FindOps$FindOp;->sinkSupplier:Ljava/util/function/Supplier;

    #@d
    .line 131
    return-void
.end method


# virtual methods
.method public evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)TO;"
        }
    .end annotation

    #@0
    .prologue
    .line 159
    .local p0, "this":Ljava/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TT;TO;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/FindOps$FindTask;

    #@2
    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/FindOps$FindTask;-><init>(Ljava/util/stream/FindOps$FindOp;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    #@5
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TS;>;)TO;"
        }
    .end annotation

    #@0
    .prologue
    .line 152
    .local p0, "this":Ljava/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TT;TO;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    iget-object v1, p0, Ljava/util/stream/FindOps$FindOp;->sinkSupplier:Ljava/util/function/Supplier;

    #@2
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/util/stream/TerminalSink;

    #@8
    invoke-virtual {p1, v1, p2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/util/stream/TerminalSink;

    #@e
    invoke-interface {v1}, Ljava/util/stream/TerminalSink;->get()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .line 153
    .local v0, "result":Ljava/lang/Object;, "TO;"
    if-eqz v0, :cond_0

    #@14
    .end local v0    # "result":Ljava/lang/Object;, "TO;"
    :goto_0
    return-object v0

    #@15
    .restart local v0    # "result":Ljava/lang/Object;, "TO;"
    :cond_0
    iget-object v0, p0, Ljava/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    #@17
    goto :goto_0
.end method

.method public getOpFlags()I
    .locals 2

    #@0
    .prologue
    .line 141
    .local p0, "this":Ljava/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TT;TO;>;"
    sget v1, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    #@2
    iget-boolean v0, p0, Ljava/util/stream/FindOps$FindOp;->mustFindFirst:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    or-int/2addr v0, v1

    #@8
    return v0

    #@9
    :cond_0
    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    #@b
    goto :goto_0
.end method

.method public inputShape()Ljava/util/stream/StreamShape;
    .locals 1

    #@0
    .prologue
    .line 146
    .local p0, "this":Ljava/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TT;TO;>;"
    iget-object v0, p0, Ljava/util/stream/FindOps$FindOp;->shape:Ljava/util/stream/StreamShape;

    #@2
    return-object v0
.end method
