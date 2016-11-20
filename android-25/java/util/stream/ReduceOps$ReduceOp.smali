.class abstract Ljava/util/stream/ReduceOps$ReduceOp;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/TerminalOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ReduceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ReduceOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava/util/stream/ReduceOps$AccumulatingSink",
        "<TT;TR;TS;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/stream/TerminalOp",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field private final inputShape:Ljava/util/stream/StreamShape;


# direct methods
.method constructor <init>(Ljava/util/stream/StreamShape;)V
    .locals 0
    .param p1, "shape"    # Ljava/util/stream/StreamShape;

    #@0
    .prologue
    .line 694
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceOp;, "Ljava/util/stream/ReduceOps$ReduceOp<TT;TR;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 695
    iput-object p1, p0, Ljava/util/stream/ReduceOps$ReduceOp;->inputShape:Ljava/util/stream/StreamShape;

    #@5
    .line 694
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
            "<TP_IN;>;)TR;"
        }
    .end annotation

    #@0
    .prologue
    .line 714
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceOp;, "Ljava/util/stream/ReduceOps$ReduceOp<TT;TR;TS;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/ReduceOps$ReduceTask;

    #@2
    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/ReduceOps$ReduceTask;-><init>(Ljava/util/stream/ReduceOps$ReduceOp;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    #@5
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/stream/ReduceOps$AccumulatingSink;

    #@b
    invoke-interface {v0}, Ljava/util/stream/ReduceOps$AccumulatingSink;->get()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)TR;"
        }
    .end annotation

    #@0
    .prologue
    .line 708
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceOp;, "Ljava/util/stream/ReduceOps$ReduceOp<TT;TR;TS;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$ReduceOp;->makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0, p2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/stream/ReduceOps$AccumulatingSink;

    #@a
    invoke-interface {v0}, Ljava/util/stream/ReduceOps$AccumulatingSink;->get()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public inputShape()Ljava/util/stream/StreamShape;
    .locals 1

    #@0
    .prologue
    .line 702
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceOp;, "Ljava/util/stream/ReduceOps$ReduceOp<TT;TR;TS;>;"
    iget-object v0, p0, Ljava/util/stream/ReduceOps$ReduceOp;->inputShape:Ljava/util/stream/StreamShape;

    #@2
    return-object v0
.end method

.method public abstract makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method
