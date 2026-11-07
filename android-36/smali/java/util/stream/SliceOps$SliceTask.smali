.class final Ljava/util/stream/SliceOps$SliceTask;
.super Ljava/util/stream/AbstractShortCircuitTask;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SliceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SliceTask"
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
        "Ljava/util/stream/Node<",
        "TP_OUT;>;",
        "Ljava/util/stream/SliceOps$SliceTask<",
        "TP_IN;TP_OUT;>;>;"
    }
.end annotation


# instance fields
.field private volatile blacklist completed:Z

.field private final blacklist generator:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;"
        }
    .end annotation
.end field

.field private final blacklist op:Ljava/util/stream/AbstractPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;"
        }
    .end annotation
.end field

.field private final blacklist targetOffset:J

.field private final blacklist targetSize:J

.field private blacklist thisNodeSize:J


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V
    .registers 9
    .param p5, "offset"    # J
    .param p7, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;",
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;JJ)V"
        }
    .end annotation

    .line 599
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "op":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TP_OUT;TP_OUT;*>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-direct {p0, p2, p3}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    .line 600
    iput-object p1, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    .line 601
    iput-object p4, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    .line 602
    iput-wide p5, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    .line 603
    iput-wide p7, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    .line 604
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/SliceOps$SliceTask;Ljava/util/Spliterator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/SliceOps$SliceTask<",
            "TP_IN;TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 607
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "parent":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/AbstractShortCircuitTask;Ljava/util/Spliterator;)V

    .line 608
    iget-object v0, p1, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iput-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    .line 609
    iget-object v0, p1, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    iput-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    .line 610
    iget-wide v0, p1, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    iput-wide v0, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    .line 611
    iget-wide v0, p1, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    iput-wide v0, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    .line 612
    return-void
.end method

.method private blacklist completedSize(J)J
    .registers 9
    .param p1, "target"    # J

    .line 732
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-boolean v0, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_7

    .line 733
    iget-wide v0, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide v0

    .line 735
    :cond_7
    iget-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/SliceOps$SliceTask;

    .line 736
    .local v0, "left":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-object v1, p0, Ljava/util/stream/SliceOps$SliceTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    .line 737
    .local v1, "right":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    if-eqz v0, :cond_24

    if-nez v1, :cond_14

    goto :goto_24

    .line 742
    :cond_14
    invoke-direct {v0, p1, p2}, Ljava/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v2

    .line 743
    .local v2, "leftSize":J
    cmp-long v4, v2, p1

    if-ltz v4, :cond_1e

    move-wide v4, v2

    goto :goto_23

    :cond_1e
    invoke-direct {v1, p1, p2}, Ljava/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v4

    add-long/2addr v4, v2

    :goto_23
    return-wide v4

    .line 739
    .end local v2    # "leftSize":J
    :cond_24
    :goto_24
    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide v2
.end method

.method private blacklist doTruncate(Ljava/util/stream/Node;)Ljava/util/stream/Node;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Node<",
            "TP_OUT;>;)",
            "Ljava/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 690
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "input":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    iget-wide v0, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_16

    invoke-interface {p1}, Ljava/util/stream/Node;->count()J

    move-result-wide v0

    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v4, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_18

    :cond_16
    iget-wide v0, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    :goto_18
    move-wide v5, v0

    .line 691
    .local v5, "to":J
    iget-wide v3, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-object v7, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    move-object v2, p1

    .end local p1    # "input":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    .local v2, "input":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    invoke-interface/range {v2 .. v7}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object p1

    return-object p1
.end method

.method private blacklist isLeftCompleted(J)Z
    .registers 11
    .param p1, "target"    # J

    .line 703
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-boolean v0, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    goto :goto_b

    :cond_7
    invoke-direct {p0, p1, p2}, Ljava/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v0

    .line 704
    .local v0, "size":J
    :goto_b
    cmp-long v2, v0, p1

    const/4 v3, 0x1

    if-ltz v2, :cond_11

    .line 705
    return v3

    .line 706
    :cond_11
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v2

    check-cast v2, Ljava/util/stream/SliceOps$SliceTask;

    .local v2, "parent":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    move-object v4, p0

    .line 707
    .local v4, "node":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    :goto_18
    if-eqz v2, :cond_37

    .line 709
    iget-object v5, v2, Ljava/util/stream/SliceOps$SliceTask;->rightChild:Ljava/util/stream/AbstractTask;

    if-ne v4, v5, :cond_2e

    .line 710
    iget-object v5, v2, Ljava/util/stream/SliceOps$SliceTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v5, Ljava/util/stream/SliceOps$SliceTask;

    .line 711
    .local v5, "left":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    if-eqz v5, :cond_2e

    .line 712
    invoke-direct {v5, p1, p2}, Ljava/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 713
    cmp-long v6, v0, p1

    if-ltz v6, :cond_2e

    .line 714
    return v3

    .line 708
    .end local v5    # "left":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    :cond_2e
    move-object v4, v2

    invoke-virtual {v2}, Ljava/util/stream/SliceOps$SliceTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Ljava/util/stream/SliceOps$SliceTask;

    goto :goto_18

    .line 718
    .end local v2    # "parent":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .end local v4    # "node":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    :cond_37
    cmp-long v2, v0, p1

    if-ltz v2, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v3, 0x0

    :goto_3d
    return v3
.end method


# virtual methods
.method protected blacklist cancel()V
    .registers 2

    .line 684
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractShortCircuitTask;->cancel()V

    .line 685
    iget-boolean v0, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_e

    .line 686
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava/util/stream/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/SliceOps$SliceTask;->setLocalResult(Ljava/lang/Object;)V

    .line 687
    :cond_e
    return-void
.end method

.method protected bridge synthetic blacklist doLeaf()Ljava/lang/Object;
    .registers 2

    .line 584
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->doLeaf()Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final blacklist doLeaf()Ljava/util/stream/Node;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 626
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_45

    .line 627
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    iget-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iget v3, v3, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    invoke-virtual {v0, v3}, Ljava/util/stream/StreamOpFlag;->isPreserved(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 628
    iget-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iget-object v1, p0, Ljava/util/stream/SliceOps$SliceTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v0, v1}, Ljava/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v1

    goto :goto_1e

    .line 629
    :cond_1d
    nop

    :goto_1e
    nop

    .line 630
    .local v1, "sizeIfKnown":J
    iget-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iget-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v0

    .line 631
    .local v0, "nb":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TP_OUT;>;"
    iget-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iget-object v4, p0, Ljava/util/stream/SliceOps$SliceTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v4}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Ljava/util/stream/AbstractPipeline;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v3

    .line 632
    .local v3, "opSink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    iget-object v4, p0, Ljava/util/stream/SliceOps$SliceTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v5, p0, Ljava/util/stream/SliceOps$SliceTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v5, v3}, Ljava/util/stream/PipelineHelper;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v5

    iget-object v6, p0, Ljava/util/stream/SliceOps$SliceTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v4, v5, v6}, Ljava/util/stream/PipelineHelper;->copyIntoWithCancel(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Z

    .line 635
    invoke-interface {v0}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    move-result-object v4

    return-object v4

    .line 638
    .end local v0    # "nb":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TP_OUT;>;"
    .end local v1    # "sizeIfKnown":J
    .end local v3    # "opSink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    :cond_45
    iget-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iget-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v0

    .line 639
    .restart local v0    # "nb":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TP_OUT;>;"
    iget-wide v1, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_6f

    .line 640
    iget-object v1, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iget-object v2, p0, Ljava/util/stream/SliceOps$SliceTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v2}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/stream/AbstractPipeline;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v1

    .line 641
    .local v1, "opSink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    iget-object v2, p0, Ljava/util/stream/SliceOps$SliceTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v3, v1}, Ljava/util/stream/PipelineHelper;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v3

    iget-object v4, p0, Ljava/util/stream/SliceOps$SliceTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v2, v3, v4}, Ljava/util/stream/PipelineHelper;->copyIntoWithCancel(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Z

    .line 642
    .end local v1    # "opSink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    goto :goto_76

    .line 644
    :cond_6f
    iget-object v1, p0, Ljava/util/stream/SliceOps$SliceTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v2, p0, Ljava/util/stream/SliceOps$SliceTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v1, v0, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    .line 646
    :goto_76
    invoke-interface {v0}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    move-result-object v1

    .line 647
    .local v1, "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    invoke-interface {v1}, Ljava/util/stream/Node;->count()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    .line 648
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    .line 649
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/stream/SliceOps$SliceTask;->spliterator:Ljava/util/Spliterator;

    .line 650
    return-object v1
.end method

.method protected bridge synthetic blacklist getEmptyResult()Ljava/lang/Object;
    .registers 2

    .line 584
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final blacklist getEmptyResult()Ljava/util/stream/Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 621
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Nodes;->emptyNode(Ljava/util/stream/StreamShape;)Ljava/util/stream/Node;

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

    .line 584
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/SliceOps$SliceTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/SliceOps$SliceTask;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist makeChild(Ljava/util/Spliterator;)Ljava/util/stream/SliceOps$SliceTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/stream/SliceOps$SliceTask<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    .line 616
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/SliceOps$SliceTask;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/SliceOps$SliceTask;Ljava/util/Spliterator;)V

    return-object v0
.end method

.method public final whitelist test-api onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 656
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->isLeaf()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_72

    .line 658
    iget-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/SliceOps$SliceTask;

    iget-wide v3, v0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    iget-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/SliceOps$SliceTask;

    iget-wide v5, v0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    .line 659
    iget-boolean v0, p0, Ljava/util/stream/SliceOps$SliceTask;->canceled:Z

    if-eqz v0, :cond_22

    .line 660
    iput-wide v1, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    .line 661
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava/util/stream/Node;

    move-result-object v0

    .local v0, "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_60

    .line 663
    .end local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_22
    iget-wide v3, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2d

    .line 664
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava/util/stream/Node;

    move-result-object v0

    .restart local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_60

    .line 665
    .end local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_2d
    iget-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/SliceOps$SliceTask;

    iget-wide v3, v0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_42

    .line 666
    iget-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/SliceOps$SliceTask;

    invoke-virtual {v0}, Ljava/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    .restart local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_60

    .line 668
    .end local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_42
    iget-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    move-result-object v0

    iget-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v3, Ljava/util/stream/SliceOps$SliceTask;

    .line 669
    invoke-virtual {v3}, Ljava/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/stream/Node;

    iget-object v4, p0, Ljava/util/stream/SliceOps$SliceTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v4, Ljava/util/stream/SliceOps$SliceTask;

    invoke-virtual {v4}, Ljava/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/stream/Node;

    .line 668
    invoke-static {v0, v3, v4}, Ljava/util/stream/Nodes;->conc(Ljava/util/stream/StreamShape;Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;

    move-result-object v0

    .line 671
    .restart local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :goto_60
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-direct {p0, v0}, Ljava/util/stream/SliceOps$SliceTask;->doTruncate(Ljava/util/stream/Node;)Ljava/util/stream/Node;

    move-result-object v3

    goto :goto_6c

    :cond_6b
    move-object v3, v0

    :goto_6c
    invoke-virtual {p0, v3}, Ljava/util/stream/SliceOps$SliceTask;->setLocalResult(Ljava/lang/Object;)V

    .line 672
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    .line 674
    .end local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_72
    iget-wide v3, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_8c

    .line 675
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v0

    if-nez v0, :cond_8c

    iget-wide v0, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v0, v2

    .line 676
    invoke-direct {p0, v0, v1}, Ljava/util/stream/SliceOps$SliceTask;->isLeftCompleted(J)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 677
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->cancelLaterNodes()V

    .line 679
    :cond_8c
    invoke-super {p0, p1}, Ljava/util/stream/AbstractShortCircuitTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 680
    return-void
.end method
