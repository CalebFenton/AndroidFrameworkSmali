.class final Ljava/util/stream/Nodes$CollectorTask$OfDouble;
.super Ljava/util/stream/Nodes$CollectorTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$CollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$CollectorTask$OfDouble$-void__init__java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;,
        Ljava/util/stream/Nodes$CollectorTask$OfDouble$-void__init__java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$CollectorTask",
        "<TP_IN;",
        "Ljava/lang/Double;",
        "Ljava/util/stream/Node$OfDouble;",
        "Ljava/util/stream/Node$Builder$OfDouble;",
        ">;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_Nodes$CollectorTask$OfDouble-mthref-0(J)Ljava/util/stream/Node$Builder$OfDouble;
    .locals 2

    #@0
    .prologue
    .line 2223
    invoke-static {p0, p1}, Ljava/util/stream/Nodes;->doubleBuilder(J)Ljava/util/stream/Node$Builder$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -java_util_stream_Nodes$CollectorTask$OfDouble-mthref-1(Ljava/util/stream/Node$OfDouble;Ljava/util/stream/Node$OfDouble;)Ljava/util/stream/Node$OfDouble;
    .locals 1

    #@0
    .prologue
    .line 2223
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfDouble;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$ConcNode$OfDouble;-><init>(Ljava/util/stream/Node$OfDouble;Ljava/util/stream/Node$OfDouble;)V

    #@5
    return-object v0
.end method

.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2223
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask$OfDouble;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>.OfDouble<TP_IN;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/Nodes$CollectorTask$OfDouble$-void__init__java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/Nodes$CollectorTask$OfDouble$-void__init__java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;-><init>()V

    #@5
    new-instance v1, Ljava/util/stream/Nodes$CollectorTask$OfDouble$-void__init__java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl1;

    #@7
    invoke-direct {v1}, Ljava/util/stream/Nodes$CollectorTask$OfDouble$-void__init__java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl1;-><init>()V

    #@a
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/stream/Nodes$CollectorTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    #@d
    .line 2222
    return-void
.end method
