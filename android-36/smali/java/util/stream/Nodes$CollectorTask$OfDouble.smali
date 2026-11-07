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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$CollectorTask<",
        "TP_IN;",
        "Ljava/lang/Double;",
        "Ljava/util/stream/Node$OfDouble;",
        "Ljava/util/stream/Node$Builder$OfDouble;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 2240
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask$OfDouble;, "Ljava/util/stream/Nodes$CollectorTask$OfDouble<TP_IN;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/Nodes$CollectorTask$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/stream/Nodes$CollectorTask$OfDouble$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Ljava/util/stream/Nodes$CollectorTask$OfDouble$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/util/stream/Nodes$CollectorTask$OfDouble$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/stream/Nodes$CollectorTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    .line 2241
    return-void
.end method
