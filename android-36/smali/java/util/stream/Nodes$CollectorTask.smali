.class Ljava/util/stream/Nodes$CollectorTask;
.super Ljava/util/stream/AbstractTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CollectorTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$CollectorTask$OfDouble;,
        Ljava/util/stream/Nodes$CollectorTask$OfLong;,
        Ljava/util/stream/Nodes$CollectorTask$OfInt;,
        Ljava/util/stream/Nodes$CollectorTask$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "T_NODE::",
        "Ljava/util/stream/Node<",
        "TP_OUT;>;T_BUI",
        "LDER::Ljava/util/stream/Node$Builder<",
        "TP_OUT;>;>",
        "Ljava/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;TT_NODE;",
        "Ljava/util/stream/Nodes$CollectorTask<",
        "TP_IN;TP_OUT;TT_NODE;TT_BUI",
        "LDER;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected final blacklist builderFactory:Ljava/util/function/LongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/LongFunction<",
            "TT_BUI",
            "LDER;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist concFactory:Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BinaryOperator<",
            "TT_NODE;>;"
        }
    .end annotation
.end field

.field protected final blacklist helper:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/Nodes$CollectorTask;Ljava/util/Spliterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Nodes$CollectorTask<",
            "TP_IN;TP_OUT;TT_NODE;TT_BUI",
            "LDER;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 2185
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/AbstractTask;Ljava/util/Spliterator;)V

    .line 2186
    iget-object v0, p1, Ljava/util/stream/Nodes$CollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    iput-object v0, p0, Ljava/util/stream/Nodes$CollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 2187
    iget-object v0, p1, Ljava/util/stream/Nodes$CollectorTask;->builderFactory:Ljava/util/function/LongFunction;

    iput-object v0, p0, Ljava/util/stream/Nodes$CollectorTask;->builderFactory:Ljava/util/function/LongFunction;

    .line 2188
    iget-object v0, p1, Ljava/util/stream/Nodes$CollectorTask;->concFactory:Ljava/util/function/BinaryOperator;

    iput-object v0, p0, Ljava/util/stream/Nodes$CollectorTask;->concFactory:Ljava/util/function/BinaryOperator;

    .line 2189
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/LongFunction<",
            "TT_BUI",
            "LDER;",
            ">;",
            "Ljava/util/function/BinaryOperator<",
            "TT_NODE;>;)V"
        }
    .end annotation

    .line 2177
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "builderFactory":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<TT_BUILDER;>;"
    .local p4, "concFactory":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT_NODE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    .line 2178
    iput-object p1, p0, Ljava/util/stream/Nodes$CollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 2179
    iput-object p3, p0, Ljava/util/stream/Nodes$CollectorTask;->builderFactory:Ljava/util/function/LongFunction;

    .line 2180
    iput-object p4, p0, Ljava/util/stream/Nodes$CollectorTask;->concFactory:Ljava/util/function/BinaryOperator;

    .line 2181
    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist doLeaf()Ljava/lang/Object;
    .registers 2

    .line 2166
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$CollectorTask;->doLeaf()Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist doLeaf()Ljava/util/stream/Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_NODE;"
        }
    .end annotation

    .line 2199
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$CollectorTask;->builderFactory:Ljava/util/function/LongFunction;

    iget-object v1, p0, Ljava/util/stream/Nodes$CollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v2, p0, Ljava/util/stream/Nodes$CollectorTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v1, v2}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node$Builder;

    .line 2200
    .local v0, "builder":Ljava/util/stream/Node$Builder;, "TT_BUILDER;"
    iget-object v1, p0, Ljava/util/stream/Nodes$CollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v2, p0, Ljava/util/stream/Nodes$CollectorTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v1, v0, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node$Builder;

    invoke-interface {v1}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    move-result-object v1

    return-object v1
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

    .line 2166
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$CollectorTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/Nodes$CollectorTask;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist makeChild(Ljava/util/Spliterator;)Ljava/util/stream/Nodes$CollectorTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/stream/Nodes$CollectorTask<",
            "TP_IN;TP_OUT;TT_NODE;TT_BUI",
            "LDER;",
            ">;"
        }
    .end annotation

    .line 2193
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/Nodes$CollectorTask;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$CollectorTask;-><init>(Ljava/util/stream/Nodes$CollectorTask;Ljava/util/Spliterator;)V

    return-object v0
.end method

.method public whitelist test-api onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 2205
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$CollectorTask;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_25

    .line 2206
    iget-object v0, p0, Ljava/util/stream/Nodes$CollectorTask;->concFactory:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Ljava/util/stream/Nodes$CollectorTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/Nodes$CollectorTask;

    invoke-virtual {v1}, Ljava/util/stream/Nodes$CollectorTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node;

    iget-object v2, p0, Ljava/util/stream/Nodes$CollectorTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v2, Ljava/util/stream/Nodes$CollectorTask;

    invoke-virtual {v2}, Ljava/util/stream/Nodes$CollectorTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Node;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    invoke-virtual {p0, v0}, Ljava/util/stream/Nodes$CollectorTask;->setLocalResult(Ljava/lang/Object;)V

    .line 2207
    :cond_25
    invoke-super {p0, p1}, Ljava/util/stream/AbstractTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 2208
    return-void
.end method
