.class final Ljava/util/stream/SliceOps$4;
.super Ljava/util/stream/DoublePipeline$StatefulOp;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SliceOps;->makeDouble(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/SliceOps$4$-java_util_Spliterator_opEvaluateParallelLazy_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/DoublePipeline$StatefulOp",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$limit:J

.field final synthetic val$skip:J


# direct methods
.method static synthetic -java_util_stream_SliceOps$4-mthref-0(I)[Ljava/lang/Double;
    .locals 1

    #@0
    .prologue
    .line 481
    new-array v0, p0, [Ljava/lang/Double;

    #@2
    return-object v0
.end method

.method constructor <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V
    .locals 0
    .param p2, "$anonymous1"    # Ljava/util/stream/StreamShape;
    .param p3, "$anonymous2"    # I
    .param p4, "val$skip"    # J
    .param p6, "val$limit"    # J

    #@0
    .prologue
    .line 453
    .local p1, "$anonymous0":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    iput-wide p4, p0, Ljava/util/stream/SliceOps$4;->val$skip:J

    #@2
    iput-wide p6, p0, Ljava/util/stream/SliceOps$4;->val$limit:J

    #@4
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/DoublePipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    #@7
    .line 454
    return-void
.end method


# virtual methods
.method public opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/function/IntFunction",
            "<[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Node",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 490
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Double;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    #@3
    move-result-wide v8

    #@4
    .line 491
    .local v8, "size":J
    const-wide/16 v2, 0x0

    #@6
    cmp-long v2, v8, v2

    #@8
    if-lez v2, :cond_0

    #@a
    const/16 v2, 0x4000

    #@c
    move-object/from16 v0, p2

    #@e
    invoke-interface {v0, v2}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 497
    invoke-virtual/range {p1 .. p1}, Ljava/util/stream/PipelineHelper;->getSourceShape()Ljava/util/stream/StreamShape;

    #@17
    move-result-object v2

    #@18
    move-object/from16 v0, p0

    #@1a
    iget-wide v4, v0, Ljava/util/stream/SliceOps$4;->val$skip:J

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-wide v6, v0, Ljava/util/stream/SliceOps$4;->val$limit:J

    #@20
    move-object/from16 v3, p2

    #@22
    invoke-static/range {v2 .. v7}, Ljava/util/stream/SliceOps;->-wrap0(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;

    #@25
    move-result-object v20

    #@26
    .line 498
    .local v20, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    const/4 v2, 0x1

    #@27
    move-object/from16 v0, p1

    #@29
    move-object/from16 v1, v20

    #@2b
    invoke-static {v0, v1, v2}, Ljava/util/stream/Nodes;->collectDouble(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfDouble;

    #@2e
    move-result-object v2

    #@2f
    return-object v2

    #@30
    .line 499
    .end local v20    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_0
    sget-object v2, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    #@32
    invoke-virtual/range {p1 .. p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    #@35
    move-result v3

    #@36
    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@39
    move-result v2

    #@3a
    if-nez v2, :cond_1

    #@3c
    .line 501
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, Ljava/util/Spliterator$OfDouble;

    #@42
    .line 502
    move-object/from16 v0, p0

    #@44
    iget-wide v4, v0, Ljava/util/stream/SliceOps$4;->val$skip:J

    #@46
    move-object/from16 v0, p0

    #@48
    iget-wide v6, v0, Ljava/util/stream/SliceOps$4;->val$limit:J

    #@4a
    move-object/from16 v2, p0

    #@4c
    .line 500
    invoke-virtual/range {v2 .. v9}, Ljava/util/stream/SliceOps$4;->unorderedSkipLimitSpliterator(Ljava/util/Spliterator$OfDouble;JJJ)Ljava/util/Spliterator$OfDouble;

    #@4f
    move-result-object v10

    #@50
    .line 507
    .local v10, "s":Ljava/util/Spliterator$OfDouble;
    const/4 v2, 0x1

    #@51
    move-object/from16 v0, p0

    #@53
    invoke-static {v0, v10, v2}, Ljava/util/stream/Nodes;->collectDouble(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfDouble;

    #@56
    move-result-object v2

    #@57
    return-object v2

    #@58
    .line 510
    .end local v10    # "s":Ljava/util/Spliterator$OfDouble;
    :cond_1
    new-instance v11, Ljava/util/stream/SliceOps$SliceTask;

    #@5a
    move-object/from16 v0, p0

    #@5c
    iget-wide v0, v0, Ljava/util/stream/SliceOps$4;->val$skip:J

    #@5e
    move-wide/from16 v16, v0

    #@60
    move-object/from16 v0, p0

    #@62
    iget-wide v0, v0, Ljava/util/stream/SliceOps$4;->val$limit:J

    #@64
    move-wide/from16 v18, v0

    #@66
    move-object/from16 v12, p0

    #@68
    move-object/from16 v13, p1

    #@6a
    move-object/from16 v14, p2

    #@6c
    move-object/from16 v15, p3

    #@6e
    invoke-direct/range {v11 .. v19}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    #@71
    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@74
    move-result-object v2

    #@75
    check-cast v2, Ljava/util/stream/Node;

    #@77
    return-object v2
.end method

.method public opEvaluateParallelLazy(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 469
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    #@3
    move-result-wide v8

    #@4
    .line 470
    .local v8, "size":J
    const-wide/16 v2, 0x0

    #@6
    cmp-long v2, v8, v2

    #@8
    if-lez v2, :cond_0

    #@a
    const/16 v2, 0x4000

    #@c
    move-object/from16 v0, p2

    #@e
    invoke-interface {v0, v2}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 471
    new-instance v2, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    #@16
    .line 472
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Ljava/util/Spliterator$OfDouble;

    #@1c
    .line 473
    move-object/from16 v0, p0

    #@1e
    iget-wide v4, v0, Ljava/util/stream/SliceOps$4;->val$skip:J

    #@20
    .line 474
    move-object/from16 v0, p0

    #@22
    iget-wide v6, v0, Ljava/util/stream/SliceOps$4;->val$skip:J

    #@24
    move-object/from16 v0, p0

    #@26
    iget-wide v10, v0, Ljava/util/stream/SliceOps$4;->val$limit:J

    #@28
    invoke-static {v6, v7, v10, v11}, Ljava/util/stream/SliceOps;->-wrap3(JJ)J

    #@2b
    move-result-wide v6

    #@2c
    .line 471
    invoke-direct/range {v2 .. v7}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;JJ)V

    #@2f
    return-object v2

    #@30
    .line 475
    :cond_0
    sget-object v2, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    #@32
    invoke-virtual/range {p1 .. p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    #@35
    move-result v3

    #@36
    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@39
    move-result v2

    #@3a
    if-nez v2, :cond_1

    #@3c
    .line 477
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, Ljava/util/Spliterator$OfDouble;

    #@42
    .line 478
    move-object/from16 v0, p0

    #@44
    iget-wide v4, v0, Ljava/util/stream/SliceOps$4;->val$skip:J

    #@46
    move-object/from16 v0, p0

    #@48
    iget-wide v6, v0, Ljava/util/stream/SliceOps$4;->val$limit:J

    #@4a
    move-object/from16 v2, p0

    #@4c
    .line 476
    invoke-virtual/range {v2 .. v9}, Ljava/util/stream/SliceOps$4;->unorderedSkipLimitSpliterator(Ljava/util/Spliterator$OfDouble;JJJ)Ljava/util/Spliterator$OfDouble;

    #@4f
    move-result-object v2

    #@50
    return-object v2

    #@51
    .line 481
    :cond_1
    new-instance v11, Ljava/util/stream/SliceOps$SliceTask;

    #@53
    new-instance v15, Ljava/util/stream/SliceOps$4$-java_util_Spliterator_opEvaluateParallelLazy_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;

    #@55
    invoke-direct {v15}, Ljava/util/stream/SliceOps$4$-java_util_Spliterator_opEvaluateParallelLazy_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;-><init>()V

    #@58
    move-object/from16 v0, p0

    #@5a
    iget-wide v0, v0, Ljava/util/stream/SliceOps$4;->val$skip:J

    #@5c
    move-wide/from16 v16, v0

    #@5e
    move-object/from16 v0, p0

    #@60
    iget-wide v0, v0, Ljava/util/stream/SliceOps$4;->val$limit:J

    #@62
    move-wide/from16 v18, v0

    #@64
    move-object/from16 v12, p0

    #@66
    move-object/from16 v13, p1

    #@68
    move-object/from16 v14, p2

    #@6a
    invoke-direct/range {v11 .. v19}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    #@6d
    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@70
    move-result-object v2

    #@71
    check-cast v2, Ljava/util/stream/Node;

    #@73
    invoke-interface {v2}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    #@76
    move-result-object v2

    #@77
    return-object v2
.end method

.method public opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 8
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 517
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    new-instance v1, Ljava/util/stream/SliceOps$4$1;

    #@2
    iget-wide v4, p0, Ljava/util/stream/SliceOps$4;->val$skip:J

    #@4
    iget-wide v6, p0, Ljava/util/stream/SliceOps$4;->val$limit:J

    #@6
    move-object v2, p0

    #@7
    move-object v3, p2

    #@8
    invoke-direct/range {v1 .. v7}, Ljava/util/stream/SliceOps$4$1;-><init>(Ljava/util/stream/SliceOps$4;Ljava/util/stream/Sink;JJ)V

    #@b
    return-object v1
.end method

.method unorderedSkipLimitSpliterator(Ljava/util/Spliterator$OfDouble;JJJ)Ljava/util/Spliterator$OfDouble;
    .locals 6
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .param p6, "sizeIfKnown"    # J

    #@0
    .prologue
    .line 457
    cmp-long v0, p2, p6

    #@2
    if-gtz v0, :cond_0

    #@4
    .line 460
    const-wide/16 v0, 0x0

    #@6
    cmp-long v0, p4, v0

    #@8
    if-ltz v0, :cond_1

    #@a
    sub-long v0, p6, p2

    #@c
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@f
    move-result-wide p4

    #@10
    .line 461
    :goto_0
    const-wide/16 p2, 0x0

    #@12
    .line 463
    :cond_0
    new-instance v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;

    #@14
    move-object v1, p1

    #@15
    move-wide v2, p2

    #@16
    move-wide v4, p4

    #@17
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;JJ)V

    #@1a
    return-object v0

    #@1b
    .line 460
    :cond_1
    sub-long p4, p6, p2

    #@1d
    goto :goto_0
.end method
