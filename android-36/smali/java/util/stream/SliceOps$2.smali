.class Ljava/util/stream/SliceOps$2;
.super Ljava/util/stream/IntPipeline$StatefulOp;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SliceOps;->makeInt(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/IntPipeline$StatefulOp<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$limit:J

.field final synthetic blacklist val$normalizedLimit:J

.field final synthetic blacklist val$skip:J


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJJ)V
    .registers 10
    .param p2, "inputShape"    # Ljava/util/stream/StreamShape;
    .param p3, "opFlags"    # I

    .line 236
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    iput-wide p4, p0, Ljava/util/stream/SliceOps$2;->val$skip:J

    iput-wide p6, p0, Ljava/util/stream/SliceOps$2;->val$normalizedLimit:J

    iput-wide p8, p0, Ljava/util/stream/SliceOps$2;->val$limit:J

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/IntPipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-void
.end method

.method static synthetic blacklist lambda$opEvaluateParallelLazy$0(I)[Ljava/lang/Integer;
    .registers 2
    .param p0, "x$0"    # I

    .line 269
    new-array v0, p0, [Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method blacklist exactOutputSize(J)J
    .registers 9
    .param p1, "previousSize"    # J

    .line 239
    iget-wide v2, p0, Ljava/util/stream/SliceOps$2;->val$skip:J

    iget-wide v4, p0, Ljava/util/stream/SliceOps$2;->val$normalizedLimit:J

    move-wide v0, p1

    .end local p1    # "previousSize":J
    .local v0, "previousSize":J
    invoke-static/range {v0 .. v5}, Ljava/util/stream/SliceOps;->-$$Nest$smcalcSize(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public blacklist opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Node<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 279
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v6

    .line 280
    .local v6, "size":J
    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    const/4 v8, 0x1

    if-lez v1, :cond_29

    const/16 v1, 0x4000

    move-object/from16 v3, p2

    invoke-interface {v3, v1}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 286
    invoke-virtual/range {p1 .. p1}, Ljava/util/stream/PipelineHelper;->getSourceShape()Ljava/util/stream/StreamShape;

    move-result-object v9

    iget-wide v11, p0, Ljava/util/stream/SliceOps$2;->val$skip:J

    iget-wide v13, p0, Ljava/util/stream/SliceOps$2;->val$limit:J

    move-object v10, v3

    invoke-static/range {v9 .. v14}, Ljava/util/stream/SliceOps;->-$$Nest$smsliceSpliterator(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;

    move-result-object v1

    .line 287
    .local v1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    move-object/from16 v9, p1

    invoke-static {v9, v1, v8}, Ljava/util/stream/Nodes;->collectInt(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfInt;

    move-result-object v2

    return-object v2

    .line 280
    .end local v1    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_29
    move-object/from16 v9, p1

    .line 288
    sget-object v1, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v9}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 289
    nop

    .line 290
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v1

    check-cast v1, Ljava/util/Spliterator$OfInt;

    iget-wide v2, p0, Ljava/util/stream/SliceOps$2;->val$skip:J

    iget-wide v4, p0, Ljava/util/stream/SliceOps$2;->val$limit:J

    .line 289
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Ljava/util/stream/SliceOps$2;->unorderedSkipLimitSpliterator(Ljava/util/Spliterator$OfInt;JJJ)Ljava/util/Spliterator$OfInt;

    move-result-object v1

    .line 296
    move-wide v10, v6

    .end local v6    # "size":J
    .local v1, "s":Ljava/util/Spliterator$OfInt;
    .local v10, "size":J
    invoke-static {p0, v1, v8}, Ljava/util/stream/Nodes;->collectInt(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfInt;

    move-result-object v2

    return-object v2

    .line 299
    .end local v1    # "s":Ljava/util/Spliterator$OfInt;
    .end local v10    # "size":J
    .restart local v6    # "size":J
    :cond_4d
    new-instance v1, Ljava/util/stream/SliceOps$SliceTask;

    iget-wide v5, p0, Ljava/util/stream/SliceOps$2;->val$skip:J

    iget-wide v7, p0, Ljava/util/stream/SliceOps$2;->val$limit:J

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v0, v1

    move-object v2, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 300
    invoke-virtual {v0}, Ljava/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    .line 299
    return-object v0
.end method

.method public blacklist opEvaluateParallelLazy(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 257
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v6

    .line 258
    .local v6, "size":J
    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    if-lez v1, :cond_2b

    const/16 v1, 0x4000

    move-object/from16 v8, p2

    invoke-interface {v8, v1}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 259
    new-instance v9, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;

    .line 260
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/util/Spliterator$OfInt;

    iget-wide v11, p0, Ljava/util/stream/SliceOps$2;->val$skip:J

    iget-wide v1, p0, Ljava/util/stream/SliceOps$2;->val$skip:J

    iget-wide v3, p0, Ljava/util/stream/SliceOps$2;->val$limit:J

    .line 262
    invoke-static {v1, v2, v3, v4}, Ljava/util/stream/SliceOps;->-$$Nest$smcalcSliceFence(JJ)J

    move-result-wide v13

    invoke-direct/range {v9 .. v14}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;JJ)V

    .line 259
    return-object v9

    .line 258
    :cond_2b
    move-object/from16 v8, p2

    .line 263
    :cond_2d
    sget-object v1, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 264
    nop

    .line 265
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v1

    check-cast v1, Ljava/util/Spliterator$OfInt;

    iget-wide v2, p0, Ljava/util/stream/SliceOps$2;->val$skip:J

    iget-wide v4, p0, Ljava/util/stream/SliceOps$2;->val$limit:J

    .line 264
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Ljava/util/stream/SliceOps$2;->unorderedSkipLimitSpliterator(Ljava/util/Spliterator$OfInt;JJJ)Ljava/util/Spliterator$OfInt;

    move-result-object v1

    move-wide v9, v6

    .end local v6    # "size":J
    .local v9, "size":J
    return-object v1

    .line 269
    .end local v9    # "size":J
    .restart local v6    # "size":J
    :cond_4b
    new-instance v1, Ljava/util/stream/SliceOps$SliceTask;

    new-instance v4, Ljava/util/stream/SliceOps$2$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/util/stream/SliceOps$2$$ExternalSyntheticLambda0;-><init>()V

    iget-wide v5, p0, Ljava/util/stream/SliceOps$2;->val$skip:J

    iget-wide v7, p0, Ljava/util/stream/SliceOps$2;->val$limit:J

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v0, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 270
    invoke-virtual {v0}, Ljava/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    .line 269
    return-object v0
.end method

.method public blacklist opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 307
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/stream/SliceOps$2$1;

    invoke-direct {v0, p0, p2}, Ljava/util/stream/SliceOps$2$1;-><init>(Ljava/util/stream/SliceOps$2;Ljava/util/stream/Sink;)V

    return-object v0
.end method

.method blacklist unorderedSkipLimitSpliterator(Ljava/util/Spliterator$OfInt;JJJ)Ljava/util/Spliterator$OfInt;
    .registers 14
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .param p6, "sizeIfKnown"    # J

    .line 244
    cmp-long v0, p2, p6

    if-gtz v0, :cond_19

    .line 247
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_11

    sub-long v0, p6, p2

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_13

    :cond_11
    sub-long v0, p6, p2

    :goto_13
    move-wide p4, v0

    .line 248
    const-wide/16 p2, 0x0

    move-wide v2, p2

    move-wide v4, p4

    goto :goto_1b

    .line 244
    :cond_19
    move-wide v2, p2

    move-wide v4, p4

    .line 250
    .end local p2    # "skip":J
    .end local p4    # "limit":J
    .local v2, "skip":J
    .local v4, "limit":J
    :goto_1b
    new-instance v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;

    move-object v1, p1

    .end local p1    # "s":Ljava/util/Spliterator$OfInt;
    .local v1, "s":Ljava/util/Spliterator$OfInt;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;JJ)V

    return-object v0
.end method
