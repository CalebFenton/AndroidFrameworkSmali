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
        "Ljava/util/stream/ReduceOps$AccumulatingSink<",
        "TT;TR;TS;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/stream/TerminalOp<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field private final blacklist inputShape:Ljava/util/stream/StreamShape;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/StreamShape;)V
    .registers 2
    .param p1, "shape"    # Ljava/util/stream/StreamShape;

    .line 907
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceOp;, "Ljava/util/stream/ReduceOps$ReduceOp<TT;TR;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    iput-object p1, p0, Ljava/util/stream/ReduceOps$ReduceOp;->inputShape:Ljava/util/stream/StreamShape;

    .line 909
    return-void
.end method


# virtual methods
.method public blacklist evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)TR;"
        }
    .end annotation

    .line 927
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceOp;, "Ljava/util/stream/ReduceOps$ReduceOp<TT;TR;TS;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/ReduceOps$ReduceTask;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/ReduceOps$ReduceTask;-><init>(Ljava/util/stream/ReduceOps$ReduceOp;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    invoke-virtual {v0}, Ljava/util/stream/ReduceOps$ReduceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {v0}, Ljava/util/stream/ReduceOps$AccumulatingSink;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)TR;"
        }
    .end annotation

    .line 921
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceOp;, "Ljava/util/stream/ReduceOps$ReduceOp<TT;TR;TS;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$ReduceOp;->makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljava/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {v0}, Ljava/util/stream/ReduceOps$AccumulatingSink;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist inputShape()Ljava/util/stream/StreamShape;
    .registers 2

    .line 915
    .local p0, "this":Ljava/util/stream/ReduceOps$ReduceOp;, "Ljava/util/stream/ReduceOps$ReduceOp<TT;TR;TS;>;"
    iget-object v0, p0, Ljava/util/stream/ReduceOps$ReduceOp;->inputShape:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public abstract blacklist makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method
