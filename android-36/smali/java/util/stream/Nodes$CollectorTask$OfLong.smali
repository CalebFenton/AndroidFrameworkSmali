.class final Ljava/util/stream/Nodes$CollectorTask$OfLong;
.super Ljava/util/stream/Nodes$CollectorTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$CollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$CollectorTask<",
        "TP_IN;",
        "Ljava/lang/Long;",
        "Ljava/util/stream/Node$OfLong;",
        "Ljava/util/stream/Node$Builder$OfLong;",
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
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 2232
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask$OfLong;, "Ljava/util/stream/Nodes$CollectorTask$OfLong<TP_IN;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/Nodes$CollectorTask$OfLong$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/stream/Nodes$CollectorTask$OfLong$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Ljava/util/stream/Nodes$CollectorTask$OfLong$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/util/stream/Nodes$CollectorTask$OfLong$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/stream/Nodes$CollectorTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    .line 2233
    return-void
.end method
