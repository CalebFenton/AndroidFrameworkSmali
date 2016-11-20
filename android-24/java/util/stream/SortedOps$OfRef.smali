.class final Ljava/util/stream/SortedOps$OfRef;
.super Ljava/util/stream/ReferencePipeline$StatefulOp;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/ReferencePipeline$StatefulOp",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final isNaturalSort:Z


# direct methods
.method constructor <init>(Ljava/util/stream/AbstractPipeline;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TT;*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 111
    .local p0, "this":Ljava/util/stream/SortedOps$OfRef;, "Ljava/util/stream/SortedOps$OfRef<TT;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    #@2
    .line 112
    sget v2, Ljava/util/stream/StreamOpFlag;->IS_ORDERED:I

    #@4
    sget v3, Ljava/util/stream/StreamOpFlag;->IS_SORTED:I

    #@6
    or-int/2addr v2, v3

    #@7
    .line 111
    invoke-direct {p0, p1, v1, v2}, Ljava/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    #@a
    .line 113
    const/4 v1, 0x1

    #@b
    iput-boolean v1, p0, Ljava/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    #@d
    .line 116
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    #@10
    move-result-object v0

    #@11
    .line 117
    .local v0, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iput-object v0, p0, Ljava/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    #@13
    .line 110
    return-void
.end method

.method constructor <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TT;*>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 126
    .local p0, "this":Ljava/util/stream/SortedOps$OfRef;, "Ljava/util/stream/SortedOps$OfRef<TT;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    sget-object v0, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    #@2
    .line 127
    sget v1, Ljava/util/stream/StreamOpFlag;->IS_ORDERED:I

    #@4
    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    #@6
    or-int/2addr v1, v2

    #@7
    .line 126
    invoke-direct {p0, p1, v0, v1}, Ljava/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    #@a
    .line 128
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    #@d
    .line 129
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/util/Comparator;

    #@13
    iput-object v0, p0, Ljava/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    #@15
    .line 125
    return-void
.end method


# virtual methods
.method public opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 152
    .local p0, "this":Ljava/util/stream/SortedOps$OfRef;, "Ljava/util/stream/SortedOps$OfRef<TT;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    sget-object v1, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    #@2
    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    #@5
    move-result v2

    #@6
    invoke-virtual {v1, v2}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    iget-boolean v1, p0, Ljava/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 153
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, p2, v1, p3}, Ljava/util/stream/PipelineHelper;->evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 157
    :cond_0
    const/4 v1, 0x1

    #@17
    invoke-virtual {p1, p2, v1, p3}, Ljava/util/stream/PipelineHelper;->evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@1a
    move-result-object v1

    #@1b
    invoke-interface {v1, p3}, Ljava/util/stream/Node;->asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    .line 158
    .local v0, "flattenedData":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Ljava/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    #@21
    invoke-static {v0, v1}, Ljava/util/Arrays;->parallelSort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@24
    .line 159
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([Ljava/lang/Object;)Ljava/util/stream/Node;

    #@27
    move-result-object v1

    #@28
    return-object v1
.end method

.method public opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<TT;>;)",
            "Ljava/util/stream/Sink",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 134
    .local p0, "this":Ljava/util/stream/SortedOps$OfRef;, "Ljava/util/stream/SortedOps$OfRef<TT;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 138
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-boolean v0, p0, Ljava/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 139
    return-object p2

    #@10
    .line 140
    :cond_0
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    #@12
    invoke-virtual {v0, p1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 141
    new-instance v0, Ljava/util/stream/SortedOps$SizedRefSortingSink;

    #@1a
    iget-object v1, p0, Ljava/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    #@1c
    invoke-direct {v0, p2, v1}, Ljava/util/stream/SortedOps$SizedRefSortingSink;-><init>(Ljava/util/stream/Sink;Ljava/util/Comparator;)V

    #@1f
    return-object v0

    #@20
    .line 143
    :cond_1
    new-instance v0, Ljava/util/stream/SortedOps$RefSortingSink;

    #@22
    iget-object v1, p0, Ljava/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    #@24
    invoke-direct {v0, p2, v1}, Ljava/util/stream/SortedOps$RefSortingSink;-><init>(Ljava/util/stream/Sink;Ljava/util/Comparator;)V

    #@27
    return-object v0
.end method
