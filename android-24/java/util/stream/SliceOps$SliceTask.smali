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
        "Ljava/util/stream/AbstractShortCircuitTask",
        "<TP_IN;TP_OUT;",
        "Ljava/util/stream/Node",
        "<TP_OUT;>;",
        "Ljava/util/stream/SliceOps$SliceTask",
        "<TP_IN;TP_OUT;>;>;"
    }
.end annotation


# instance fields
.field private volatile completed:Z

.field private final generator:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction",
            "<[TP_OUT;>;"
        }
    .end annotation
.end field

.field private final op:Ljava/util/stream/AbstractPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/AbstractPipeline",
            "<TP_OUT;TP_OUT;*>;"
        }
    .end annotation
.end field

.field private final targetOffset:J

.field private final targetSize:J

.field private thisNodeSize:J


# direct methods
.method constructor <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V
    .locals 1
    .param p5, "offset"    # J
    .param p7, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<TP_OUT;TP_OUT;*>;",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/function/IntFunction",
            "<[TP_OUT;>;JJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 573
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "op":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TP_OUT;TP_OUT;*>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-direct {p0, p2, p3}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    #@3
    .line 574
    iput-object p1, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    #@5
    .line 575
    iput-object p4, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    #@7
    .line 576
    iput-wide p5, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    #@9
    .line 577
    iput-wide p7, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    #@b
    .line 572
    return-void
.end method

.method constructor <init>(Ljava/util/stream/SliceOps$SliceTask;Ljava/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/SliceOps$SliceTask",
            "<TP_IN;TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 581
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "parent":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/AbstractShortCircuitTask;Ljava/util/Spliterator;)V

    #@3
    .line 582
    iget-object v0, p1, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    #@5
    iput-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    #@7
    .line 583
    iget-object v0, p1, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    #@9
    iput-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    #@b
    .line 584
    iget-wide v0, p1, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    #@d
    iput-wide v0, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    #@f
    .line 585
    iget-wide v0, p1, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    #@11
    iput-wide v0, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    #@13
    .line 580
    return-void
.end method

.method private completedSize(J)J
    .locals 7
    .param p1, "target"    # J

    #@0
    .prologue
    .line 699
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-boolean v4, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 700
    iget-wide v4, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    #@6
    return-wide v4

    #@7
    .line 702
    :cond_0
    iget-object v0, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    #@9
    check-cast v0, Ljava/util/stream/SliceOps$SliceTask;

    #@b
    .line 703
    .local v0, "left":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-object v1, p0, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    #@d
    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    #@f
    .line 704
    .local v1, "right":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    if-eqz v0, :cond_1

    #@11
    if-nez v1, :cond_2

    #@13
    .line 706
    :cond_1
    iget-wide v4, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    #@15
    return-wide v4

    #@16
    .line 709
    :cond_2
    invoke-direct {v0, p1, p2}, Ljava/util/stream/SliceOps$SliceTask;->completedSize(J)J

    #@19
    move-result-wide v2

    #@1a
    .line 710
    .local v2, "leftSize":J
    cmp-long v4, v2, p1

    #@1c
    if-ltz v4, :cond_3

    #@1e
    .end local v2    # "leftSize":J
    :goto_0
    return-wide v2

    #@1f
    .restart local v2    # "leftSize":J
    :cond_3
    invoke-direct {v1, p1, p2}, Ljava/util/stream/SliceOps$SliceTask;->completedSize(J)J

    #@22
    move-result-wide v4

    #@23
    add-long/2addr v2, v4

    #@24
    goto :goto_0
.end method

.method private doTruncate(Ljava/util/stream/Node;)Ljava/util/stream/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Node",
            "<TP_OUT;>;)",
            "Ljava/util/stream/Node",
            "<TP_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 657
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "input":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    iget-wide v0, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-ltz v0, :cond_0

    #@8
    invoke-interface {p1}, Ljava/util/stream/Node;->count()J

    #@b
    move-result-wide v0

    #@c
    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    #@e
    iget-wide v6, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    #@10
    add-long/2addr v2, v6

    #@11
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@14
    move-result-wide v4

    #@15
    .line 658
    .local v4, "to":J
    :goto_0
    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    #@17
    iget-object v6, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    #@19
    move-object v1, p1

    #@1a
    invoke-interface/range {v1 .. v6}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    .line 657
    .end local v4    # "to":J
    :cond_0
    iget-wide v4, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    #@21
    .restart local v4    # "to":J
    goto :goto_0
.end method

.method private isLeftCompleted(J)Z
    .locals 9
    .param p1, "target"    # J

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    const/4 v3, 0x1

    #@1
    .line 670
    iget-boolean v6, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    #@3
    if-eqz v6, :cond_0

    #@5
    iget-wide v4, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    #@7
    .line 671
    .local v4, "size":J
    :goto_0
    cmp-long v6, v4, p1

    #@9
    if-ltz v6, :cond_1

    #@b
    .line 672
    return v3

    #@c
    .line 670
    .end local v4    # "size":J
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/util/stream/SliceOps$SliceTask;->completedSize(J)J

    #@f
    move-result-wide v4

    #@10
    goto :goto_0

    #@11
    .line 673
    .restart local v4    # "size":J
    :cond_1
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/util/stream/SliceOps$SliceTask;

    #@17
    .local v2, "parent":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    move-object v1, p0

    #@18
    .local v1, "node":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    :goto_1
    if-eqz v2, :cond_3

    #@1a
    .line 676
    iget-object v6, v2, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    #@1c
    if-ne v1, v6, :cond_2

    #@1e
    .line 677
    iget-object v0, v2, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    #@20
    check-cast v0, Ljava/util/stream/SliceOps$SliceTask;

    #@22
    .line 678
    .local v0, "left":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    if-eqz v0, :cond_2

    #@24
    .line 679
    invoke-direct {v0, p1, p2}, Ljava/util/stream/SliceOps$SliceTask;->completedSize(J)J

    #@27
    move-result-wide v6

    #@28
    add-long/2addr v4, v6

    #@29
    .line 680
    cmp-long v6, v4, p1

    #@2b
    if-ltz v6, :cond_2

    #@2d
    .line 681
    return v3

    #@2e
    .line 675
    .end local v0    # "left":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    :cond_2
    move-object v1, v2

    #@2f
    invoke-virtual {v2}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    #@32
    move-result-object v2

    #@33
    .end local v2    # "parent":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    check-cast v2, Ljava/util/stream/SliceOps$SliceTask;

    #@35
    .restart local v2    # "parent":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    goto :goto_1

    #@36
    .line 685
    :cond_3
    cmp-long v6, v4, p1

    #@38
    if-ltz v6, :cond_4

    #@3a
    :goto_2
    return v3

    #@3b
    :cond_4
    const/4 v3, 0x0

    #@3c
    goto :goto_2
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    #@0
    .prologue
    .line 651
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractShortCircuitTask;->cancel()V

    #@3
    .line 652
    iget-boolean v0, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 653
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava/util/stream/Node;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    #@e
    .line 650
    :cond_0
    return-void
.end method

.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 599
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->doLeaf()Ljava/util/stream/Node;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected final doLeaf()Ljava/util/stream/Node;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node",
            "<TP_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 600
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->isRoot()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_1

    #@6
    .line 601
    sget-object v3, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    #@8
    iget-object v6, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    #@a
    iget v6, v6, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    #@c
    invoke-virtual {v3, v6}, Ljava/util/stream/StreamOpFlag;->isPreserved(I)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 602
    iget-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    #@14
    iget-object v6, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    #@16
    invoke-virtual {v3, v6}, Ljava/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    #@19
    move-result-wide v4

    #@1a
    .line 604
    .local v4, "sizeIfKnown":J
    :goto_0
    iget-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    #@1c
    iget-object v6, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    #@1e
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    #@21
    move-result-object v0

    #@22
    .line 605
    .local v0, "nb":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TP_OUT;>;"
    iget-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    #@24
    iget-object v6, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    #@26
    invoke-virtual {v6}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    #@29
    move-result v6

    #@2a
    invoke-virtual {v3, v6, v0}, Ljava/util/stream/AbstractPipeline;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;

    #@2d
    move-result-object v2

    #@2e
    .line 606
    .local v2, "opSink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    iget-object v3, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    #@30
    iget-object v6, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    #@32
    invoke-virtual {v6, v2}, Ljava/util/stream/PipelineHelper;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    #@35
    move-result-object v6

    #@36
    iget-object v7, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    #@38
    invoke-virtual {v3, v6, v7}, Ljava/util/stream/PipelineHelper;->copyIntoWithCancel(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V

    #@3b
    .line 609
    invoke-interface {v0}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    #@3e
    move-result-object v3

    #@3f
    return-object v3

    #@40
    .line 603
    .end local v0    # "nb":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TP_OUT;>;"
    .end local v2    # "opSink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    .end local v4    # "sizeIfKnown":J
    :cond_0
    const-wide/16 v4, -0x1

    #@42
    .restart local v4    # "sizeIfKnown":J
    goto :goto_0

    #@43
    .line 612
    .end local v4    # "sizeIfKnown":J
    :cond_1
    iget-object v3, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    #@45
    iget-object v6, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    #@47
    const-wide/16 v8, -0x1

    #@49
    iget-object v7, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    #@4b
    invoke-virtual {v6, v8, v9, v7}, Ljava/util/stream/PipelineHelper;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    #@4e
    move-result-object v6

    #@4f
    .line 613
    iget-object v7, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    #@51
    .line 612
    invoke-virtual {v3, v6, v7}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    #@54
    move-result-object v3

    #@55
    check-cast v3, Ljava/util/stream/Node$Builder;

    #@57
    invoke-interface {v3}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    #@5a
    move-result-object v1

    #@5b
    .line 614
    .local v1, "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    invoke-interface {v1}, Ljava/util/stream/Node;->count()J

    #@5e
    move-result-wide v6

    #@5f
    iput-wide v6, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    #@61
    .line 615
    const/4 v3, 0x1

    #@62
    iput-boolean v3, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    #@64
    .line 616
    const/4 v3, 0x0

    #@65
    iput-object v3, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    #@67
    .line 617
    return-object v1
.end method

.method protected bridge synthetic getEmptyResult()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 594
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava/util/stream/Node;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected final getEmptyResult()Ljava/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node",
            "<TP_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 595
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    #@2
    invoke-virtual {v0}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/stream/Nodes;->emptyNode(Ljava/util/stream/StreamShape;)Ljava/util/stream/Node;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method protected bridge synthetic makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;
    .locals 1
    .param p1, "spliterator"    # Ljava/util/Spliterator;

    #@0
    .prologue
    .line 589
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/SliceOps$SliceTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/SliceOps$SliceTask;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected makeChild(Ljava/util/Spliterator;)Ljava/util/stream/SliceOps$SliceTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/stream/SliceOps$SliceTask",
            "<TP_IN;TP_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 590
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/SliceOps$SliceTask;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/SliceOps$SliceTask;Ljava/util/Spliterator;)V

    #@5
    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const-wide/16 v6, 0x0

    #@2
    .line 623
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->isLeaf()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 625
    iget-object v1, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    #@a
    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    #@c
    iget-wide v2, v1, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    #@e
    iget-object v1, p0, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    #@10
    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    #@12
    iget-wide v4, v1, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    #@14
    add-long/2addr v2, v4

    #@15
    iput-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    #@17
    .line 626
    iget-boolean v1, p0, Ljava/util/stream/SliceOps$SliceTask;->canceled:Z

    #@19
    if-eqz v1, :cond_3

    #@1b
    .line 627
    iput-wide v6, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    #@1d
    .line 628
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava/util/stream/Node;

    #@20
    move-result-object v0

    #@21
    .line 638
    .local v0, "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->isRoot()Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_0

    #@27
    invoke-direct {p0, v0}, Ljava/util/stream/SliceOps$SliceTask;->doTruncate(Ljava/util/stream/Node;)Ljava/util/stream/Node;

    #@2a
    move-result-object v0

    #@2b
    .end local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    #@2e
    .line 639
    const/4 v1, 0x1

    #@2f
    iput-boolean v1, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    #@31
    .line 641
    :cond_1
    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    #@33
    cmp-long v1, v2, v6

    #@35
    if-ltz v1, :cond_2

    #@37
    .line 642
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->isRoot()Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_6

    #@3d
    .line 646
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Ljava/util/stream/AbstractShortCircuitTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    #@40
    .line 622
    return-void

    #@41
    .line 630
    :cond_3
    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    #@43
    cmp-long v1, v2, v6

    #@45
    if-nez v1, :cond_4

    #@47
    .line 631
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava/util/stream/Node;

    #@4a
    move-result-object v0

    #@4b
    .restart local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_0

    #@4c
    .line 632
    .end local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_4
    iget-object v1, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    #@4e
    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    #@50
    iget-wide v2, v1, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    #@52
    cmp-long v1, v2, v6

    #@54
    if-nez v1, :cond_5

    #@56
    .line 633
    iget-object v1, p0, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    #@58
    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    #@5a
    invoke-virtual {v1}, Ljava/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    #@5d
    move-result-object v0

    #@5e
    check-cast v0, Ljava/util/stream/Node;

    #@60
    .restart local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_0

    #@61
    .line 635
    .end local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_5
    iget-object v1, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    #@63
    invoke-virtual {v1}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    #@66
    move-result-object v3

    #@67
    .line 636
    iget-object v1, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    #@69
    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    #@6b
    invoke-virtual {v1}, Ljava/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    #@6e
    move-result-object v1

    #@6f
    check-cast v1, Ljava/util/stream/Node;

    #@71
    iget-object v2, p0, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    #@73
    check-cast v2, Ljava/util/stream/SliceOps$SliceTask;

    #@75
    invoke-virtual {v2}, Ljava/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    #@78
    move-result-object v2

    #@79
    check-cast v2, Ljava/util/stream/Node;

    #@7b
    .line 635
    invoke-static {v3, v1, v2}, Ljava/util/stream/Nodes;->conc(Ljava/util/stream/StreamShape;Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;

    #@7e
    move-result-object v0

    #@7f
    .restart local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_0

    #@80
    .line 643
    .end local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_6
    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    #@82
    iget-wide v4, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    #@84
    add-long/2addr v2, v4

    #@85
    invoke-direct {p0, v2, v3}, Ljava/util/stream/SliceOps$SliceTask;->isLeftCompleted(J)Z

    #@88
    move-result v1

    #@89
    .line 641
    if-eqz v1, :cond_2

    #@8b
    .line 644
    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->cancelLaterNodes()V

    #@8e
    goto :goto_1
.end method
