.class final Ljava/util/stream/Nodes$CollectorTask$OfRef;
.super Ljava/util/stream/Nodes$CollectorTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$CollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$CollectorTask<",
        "TP_IN;TP_OUT;",
        "Ljava/util/stream/Node<",
        "TP_OUT;>;",
        "Ljava/util/stream/Node$Builder<",
        "TP_OUT;>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/IntFunction;Ljava/util/Spliterator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 2216
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask$OfRef;, "Ljava/util/stream/Nodes$CollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    .local p3, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Ljava/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntFunction;)V

    new-instance v1, Ljava/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, p3, v0, v1}, Ljava/util/stream/Nodes$CollectorTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    .line 2217
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Ljava/util/function/IntFunction;J)Ljava/util/stream/Node$Builder;
    .registers 4
    .param p0, "generator"    # Ljava/util/function/IntFunction;
    .param p1, "s"    # J

    .line 2216
    invoke-static {p1, p2, p0}, Ljava/util/stream/Nodes;->builder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v0

    return-object v0
.end method
