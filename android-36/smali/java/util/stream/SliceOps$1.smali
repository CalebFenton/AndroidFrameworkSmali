.class Ljava/util/stream/SliceOps$1;
.super Ljava/util/stream/ReferencePipeline$StatefulOp;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SliceOps;->makeRef(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReferencePipeline$StatefulOp<",
        "TT;TT;>;"
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

    .line 111
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    iput-wide p4, p0, Ljava/util/stream/SliceOps$1;->val$skip:J

    iput-wide p6, p0, Ljava/util/stream/SliceOps$1;->val$normalizedLimit:J

    iput-wide p8, p0, Ljava/util/stream/SliceOps$1;->val$limit:J

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method blacklist exactOutputSize(J)J
    .registers 9
    .param p1, "previousSize"    # J

    .line 114
    iget-wide v2, p0, Ljava/util/stream/SliceOps$1;->val$skip:J

    iget-wide v4, p0, Ljava/util/stream/SliceOps$1;->val$normalizedLimit:J

    move-wide v0, p1

    .end local p1    # "previousSize":J
    .local v0, "previousSize":J
    invoke-static/range {v0 .. v5}, Ljava/util/stream/SliceOps;->-$$Nest$smcalcSize(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public blacklist opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 161
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v8, p3

    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v6

    .line 162
    .local v6, "size":J
    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    const/4 v9, 0x1

    if-lez v1, :cond_2d

    const/16 v1, 0x4000

    move-object/from16 v3, p2

    invoke-interface {v3, v1}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 168
    invoke-virtual/range {p1 .. p1}, Ljava/util/stream/PipelineHelper;->getSourceShape()Ljava/util/stream/StreamShape;

    move-result-object v10

    iget-wide v12, v0, Ljava/util/stream/SliceOps$1;->val$skip:J

    iget-wide v14, v0, Ljava/util/stream/SliceOps$1;->val$limit:J

    move-object v11, v3

    invoke-static/range {v10 .. v15}, Ljava/util/stream/SliceOps;->-$$Nest$smsliceSpliterator(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;

    move-result-object v1

    .line 169
    .local v1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    move-object/from16 v10, p1

    invoke-static {v10, v1, v9, v8}, Ljava/util/stream/Nodes;->collect(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v2

    return-object v2

    .line 162
    .end local v1    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_2d
    move-object/from16 v10, p1

    .line 170
    sget-object v1, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v10}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 171
    nop

    .line 172
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v1

    iget-wide v2, v0, Ljava/util/stream/SliceOps$1;->val$skip:J

    iget-wide v4, v0, Ljava/util/stream/SliceOps$1;->val$limit:J

    .line 171
    invoke-virtual/range {v0 .. v7}, Ljava/util/stream/SliceOps$1;->unorderedSkipLimitSpliterator(Ljava/util/Spliterator;JJJ)Ljava/util/Spliterator;

    move-result-object v1

    .line 178
    move-wide v11, v6

    .end local v6    # "size":J
    .local v1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local v11, "size":J
    invoke-static {v0, v1, v9, v8}, Ljava/util/stream/Nodes;->collect(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v2

    return-object v2

    .line 181
    .end local v1    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .end local v11    # "size":J
    .restart local v6    # "size":J
    :cond_4e
    new-instance v1, Ljava/util/stream/SliceOps$SliceTask;

    iget-wide v5, v0, Ljava/util/stream/SliceOps$1;->val$skip:J

    iget-wide v7, v0, Ljava/util/stream/SliceOps$1;->val$limit:J

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v2, v10

    invoke-direct/range {v0 .. v8}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 182
    invoke-virtual {v0}, Ljava/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    .line 181
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
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 131
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v6

    .line 132
    .local v6, "size":J
    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    if-lez v1, :cond_28

    const/16 v1, 0x4000

    move-object/from16 v8, p2

    invoke-interface {v8, v1}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 133
    new-instance v9, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    .line 134
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v10

    iget-wide v11, p0, Ljava/util/stream/SliceOps$1;->val$skip:J

    iget-wide v1, p0, Ljava/util/stream/SliceOps$1;->val$skip:J

    iget-wide v3, p0, Ljava/util/stream/SliceOps$1;->val$limit:J

    .line 136
    invoke-static {v1, v2, v3, v4}, Ljava/util/stream/SliceOps;->-$$Nest$smcalcSliceFence(JJ)J

    move-result-wide v13

    invoke-direct/range {v9 .. v14}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;JJ)V

    .line 133
    return-object v9

    .line 132
    :cond_28
    move-object/from16 v8, p2

    .line 137
    :cond_2a
    sget-object v1, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v1

    if-nez v1, :cond_46

    .line 138
    nop

    .line 139
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v1

    iget-wide v2, p0, Ljava/util/stream/SliceOps$1;->val$skip:J

    iget-wide v4, p0, Ljava/util/stream/SliceOps$1;->val$limit:J

    .line 138
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Ljava/util/stream/SliceOps$1;->unorderedSkipLimitSpliterator(Ljava/util/Spliterator;JJJ)Ljava/util/Spliterator;

    move-result-object v1

    move-wide v9, v6

    .end local v6    # "size":J
    .local v9, "size":J
    return-object v1

    .line 151
    .end local v9    # "size":J
    .restart local v6    # "size":J
    :cond_46
    new-instance v1, Ljava/util/stream/SliceOps$SliceTask;

    invoke-static {}, Ljava/util/stream/Nodes;->castingArray()Ljava/util/function/IntFunction;

    move-result-object v4

    iget-wide v5, p0, Ljava/util/stream/SliceOps$1;->val$skip:J

    iget-wide v7, p0, Ljava/util/stream/SliceOps$1;->val$limit:J

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v0, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 152
    invoke-virtual {v0}, Ljava/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    .line 151
    return-object v0
.end method

.method public blacklist opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink<",
            "TT;>;)",
            "Ljava/util/stream/Sink<",
            "TT;>;"
        }
    .end annotation

    .line 189
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    new-instance v0, Ljava/util/stream/SliceOps$1$1;

    invoke-direct {v0, p0, p2}, Ljava/util/stream/SliceOps$1$1;-><init>(Ljava/util/stream/SliceOps$1;Ljava/util/stream/Sink;)V

    return-object v0
.end method

.method blacklist unorderedSkipLimitSpliterator(Ljava/util/Spliterator;JJJ)Ljava/util/Spliterator;
    .registers 14
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .param p6, "sizeIfKnown"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;JJJ)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 119
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    cmp-long v0, p2, p6

    if-gtz v0, :cond_19

    .line 122
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

    .line 123
    const-wide/16 p2, 0x0

    move-wide v2, p2

    move-wide v4, p4

    goto :goto_1b

    .line 119
    :cond_19
    move-wide v2, p2

    move-wide v4, p4

    .line 125
    .end local p2    # "skip":J
    .end local p4    # "limit":J
    .local v2, "skip":J
    .local v4, "limit":J
    :goto_1b
    new-instance v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;

    move-object v1, p1

    .end local p1    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local v1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;JJ)V

    return-object v0
.end method
