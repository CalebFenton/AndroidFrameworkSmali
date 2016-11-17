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
        Ljava/util/stream/Nodes$CollectorTask$OfInt;,
        Ljava/util/stream/Nodes$CollectorTask$OfLong;,
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
        "Ljava/util/stream/Node",
        "<TP_OUT;>;T_BUI",
        "LDER::Ljava/util/stream/Node$Builder",
        "<TP_OUT;>;>",
        "Ljava/util/stream/AbstractTask",
        "<TP_IN;TP_OUT;TT_NODE;",
        "Ljava/util/stream/Nodes$CollectorTask",
        "<TP_IN;TP_OUT;TT_NODE;TT_BUI",
        "LDER;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected final builderFactory:Ljava/util/function/LongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/LongFunction",
            "<TT_BUI",
            "LDER;",
            ">;"
        }
    .end annotation
.end field

.field protected final concFactory:Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BinaryOperator",
            "<TT_NODE;>;"
        }
    .end annotation
.end field

.field protected final helper:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/stream/Nodes$CollectorTask;Ljava/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Nodes$CollectorTask",
            "<TP_IN;TP_OUT;TT_NODE;TT_BUI",
            "LDER;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2168
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/AbstractTask;Ljava/util/Spliterator;)V

    #@3
    .line 2169
    iget-object v0, p1, Ljava/util/stream/Nodes$CollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    #@5
    iput-object v0, p0, Ljava/util/stream/Nodes$CollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    #@7
    .line 2170
    iget-object v0, p1, Ljava/util/stream/Nodes$CollectorTask;->builderFactory:Ljava/util/function/LongFunction;

    #@9
    iput-object v0, p0, Ljava/util/stream/Nodes$CollectorTask;->builderFactory:Ljava/util/function/LongFunction;

    #@b
    .line 2171
    iget-object v0, p1, Ljava/util/stream/Nodes$CollectorTask;->concFactory:Ljava/util/function/BinaryOperator;

    #@d
    iput-object v0, p0, Ljava/util/stream/Nodes$CollectorTask;->concFactory:Ljava/util/function/BinaryOperator;

    #@f
    .line 2167
    return-void
.end method

.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/function/LongFunction",
            "<TT_BUI",
            "LDER;",
            ">;",
            "Ljava/util/function/BinaryOperator",
            "<TT_NODE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2160
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "builderFactory":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<TT_BUILDER;>;"
    .local p4, "concFactory":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT_NODE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    #@3
    .line 2161
    iput-object p1, p0, Ljava/util/stream/Nodes$CollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    #@5
    .line 2162
    iput-object p3, p0, Ljava/util/stream/Nodes$CollectorTask;->builderFactory:Ljava/util/function/LongFunction;

    #@7
    .line 2163
    iput-object p4, p0, Ljava/util/stream/Nodes$CollectorTask;->concFactory:Ljava/util/function/BinaryOperator;

    #@9
    .line 2159
    return-void
.end method


# virtual methods
.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 2181
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$CollectorTask;->doLeaf()Ljava/util/stream/Node;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected doLeaf()Ljava/util/stream/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_NODE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2182
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    iget-object v1, p0, Ljava/util/stream/Nodes$CollectorTask;->builderFactory:Ljava/util/function/LongFunction;

    #@2
    iget-object v2, p0, Ljava/util/stream/Nodes$CollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    #@4
    iget-object v3, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    #@6
    invoke-virtual {v2, v3}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    #@9
    move-result-wide v2

    #@a
    invoke-interface {v1, v2, v3}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/util/stream/Node$Builder;

    #@10
    .line 2183
    .local v0, "builder":Ljava/util/stream/Node$Builder;, "TT_BUILDER;"
    iget-object v1, p0, Ljava/util/stream/Nodes$CollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    #@12
    iget-object v2, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    #@14
    invoke-virtual {v1, v0, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/util/stream/Node$Builder;

    #@1a
    invoke-interface {v1}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method protected bridge synthetic makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;
    .locals 1
    .param p1, "spliterator"    # Ljava/util/Spliterator;

    #@0
    .prologue
    .line 2175
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$CollectorTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/Nodes$CollectorTask;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected makeChild(Ljava/util/Spliterator;)Ljava/util/stream/Nodes$CollectorTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/stream/Nodes$CollectorTask",
            "<TP_IN;TP_OUT;TT_NODE;TT_BUI",
            "LDER;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2176
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/Nodes$CollectorTask;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$CollectorTask;-><init>(Ljava/util/stream/Nodes$CollectorTask;Ljava/util/Spliterator;)V

    #@5
    return-object v0
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2188
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->isLeaf()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2189
    iget-object v2, p0, Ljava/util/stream/Nodes$CollectorTask;->concFactory:Ljava/util/function/BinaryOperator;

    #@8
    iget-object v0, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    #@a
    check-cast v0, Ljava/util/stream/Nodes$CollectorTask;

    #@c
    invoke-virtual {v0}, Ljava/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/util/stream/Node;

    #@12
    iget-object v1, p0, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    #@14
    check-cast v1, Ljava/util/stream/Nodes$CollectorTask;

    #@16
    invoke-virtual {v1}, Ljava/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Ljava/util/stream/Node;

    #@1c
    invoke-interface {v2, v0, v1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/util/stream/Node;

    #@22
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    #@25
    .line 2190
    :cond_0
    invoke-super {p0, p1}, Ljava/util/stream/AbstractTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    #@28
    .line 2187
    return-void
.end method
