.class Ljava/util/stream/ReduceOps$13;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeLongCounting()Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "Ljava/util/stream/ReduceOps$CountingSink<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/StreamShape;)V
    .registers 2
    .param p1, "shape"    # Ljava/util/stream/StreamShape;

    .line 600
    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public blacklist evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Long;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 616
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p1, p2}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v0

    .line 617
    .local v0, "size":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    .line 618
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 619
    :cond_f
    invoke-super {p0, p1, p2}, Ljava/util/stream/ReduceOps$ReduceOp;->evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    return-object v2
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

    .line 600
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/ReduceOps$13;->evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public blacklist evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Long;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 607
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p1, p2}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v0

    .line 608
    .local v0, "size":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    .line 609
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 610
    :cond_f
    invoke-super {p0, p1, p2}, Ljava/util/stream/ReduceOps$ReduceOp;->evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    return-object v2
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

    .line 600
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/ReduceOps$13;->evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getOpFlags()I
    .registers 2

    .line 624
    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    return v0
.end method

.method public bridge synthetic blacklist makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .registers 2

    .line 600
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$13;->makeSink()Ljava/util/stream/ReduceOps$CountingSink;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeSink()Ljava/util/stream/ReduceOps$CountingSink;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/ReduceOps$CountingSink<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 602
    new-instance v0, Ljava/util/stream/ReduceOps$CountingSink$OfLong;

    invoke-direct {v0}, Ljava/util/stream/ReduceOps$CountingSink$OfLong;-><init>()V

    return-object v0
.end method
