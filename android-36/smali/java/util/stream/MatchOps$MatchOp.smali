.class final Ljava/util/stream/MatchOps$MatchOp;
.super Ljava/lang/Object;
.source "MatchOps.java"

# interfaces
.implements Ljava/util/stream/TerminalOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/MatchOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MatchOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/TerminalOp<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist inputShape:Ljava/util/stream/StreamShape;

.field final blacklist matchKind:Ljava/util/stream/MatchOps$MatchKind;

.field final blacklist sinkSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/stream/MatchOps$BooleanTerminalSink<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/StreamShape;Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Supplier;)V
    .registers 4
    .param p1, "shape"    # Ljava/util/stream/StreamShape;
    .param p2, "matchKind"    # Ljava/util/stream/MatchOps$MatchKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/StreamShape;",
            "Ljava/util/stream/MatchOps$MatchKind;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/stream/MatchOps$BooleanTerminalSink<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 211
    .local p0, "this":Ljava/util/stream/MatchOps$MatchOp;, "Ljava/util/stream/MatchOps$MatchOp<TT;>;"
    .local p3, "sinkSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/stream/MatchOps$BooleanTerminalSink<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Ljava/util/stream/MatchOps$MatchOp;->inputShape:Ljava/util/stream/StreamShape;

    .line 213
    iput-object p2, p0, Ljava/util/stream/MatchOps$MatchOp;->matchKind:Ljava/util/stream/MatchOps$MatchKind;

    .line 214
    iput-object p3, p0, Ljava/util/stream/MatchOps$MatchOp;->sinkSupplier:Ljava/util/function/Supplier;

    .line 215
    return-void
.end method


# virtual methods
.method public blacklist evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TS;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 242
    .local p0, "this":Ljava/util/stream/MatchOps$MatchOp;, "Ljava/util/stream/MatchOps$MatchOp<TT;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    new-instance v0, Ljava/util/stream/MatchOps$MatchTask;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/MatchOps$MatchTask;-><init>(Ljava/util/stream/MatchOps$MatchOp;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    invoke-virtual {v0}, Ljava/util/stream/MatchOps$MatchTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic blacklist evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 196
    .local p0, "this":Ljava/util/stream/MatchOps$MatchOp;, "Ljava/util/stream/MatchOps$MatchOp<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/MatchOps$MatchOp;->evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public blacklist evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TS;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 230
    .local p0, "this":Ljava/util/stream/MatchOps$MatchOp;, "Ljava/util/stream/MatchOps$MatchOp<TT;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    iget-object v0, p0, Ljava/util/stream/MatchOps$MatchOp;->sinkSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/MatchOps$BooleanTerminalSink;

    invoke-virtual {p1, v0, p2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljava/util/stream/MatchOps$BooleanTerminalSink;

    invoke-virtual {v0}, Ljava/util/stream/MatchOps$BooleanTerminalSink;->getAndClearState()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 196
    .local p0, "this":Ljava/util/stream/MatchOps$MatchOp;, "Ljava/util/stream/MatchOps$MatchOp<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/MatchOps$MatchOp;->evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getOpFlags()I
    .registers 3

    .line 219
    .local p0, "this":Ljava/util/stream/MatchOps$MatchOp;, "Ljava/util/stream/MatchOps$MatchOp<TT;>;"
    sget v0, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    or-int/2addr v0, v1

    return v0
.end method

.method public blacklist inputShape()Ljava/util/stream/StreamShape;
    .registers 2

    .line 224
    .local p0, "this":Ljava/util/stream/MatchOps$MatchOp;, "Ljava/util/stream/MatchOps$MatchOp<TT;>;"
    iget-object v0, p0, Ljava/util/stream/MatchOps$MatchOp;->inputShape:Ljava/util/stream/StreamShape;

    return-object v0
.end method
