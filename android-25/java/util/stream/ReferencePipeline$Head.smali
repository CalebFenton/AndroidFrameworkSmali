.class public Ljava/util/stream/ReferencePipeline$Head;
.super Ljava/util/stream/ReferencePipeline;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ReferencePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Head"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "E_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/ReferencePipeline",
        "<TE_IN;TE_OUT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Spliterator;IZ)V
    .locals 0
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<*>;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 564
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>.Head<TE_IN;TE_OUT;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/ReferencePipeline;-><init>(Ljava/util/Spliterator;IZ)V

    #@3
    .line 563
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;IZ)V
    .locals 0
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<*>;>;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 552
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>.Head<TE_IN;TE_OUT;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<*>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/ReferencePipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    #@3
    .line 551
    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE_OUT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 581
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>.Head<TE_IN;TE_OUT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 582
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->sourceStageSpliterator()Ljava/util/Spliterator;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    #@d
    .line 580
    :goto_0
    return-void

    #@e
    .line 585
    :cond_0
    invoke-super {p0, p1}, Ljava/util/stream/ReferencePipeline;->forEach(Ljava/util/function/Consumer;)V

    #@11
    goto :goto_0
.end method

.method public forEachOrdered(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE_OUT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 591
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>.Head<TE_IN;TE_OUT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 592
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->sourceStageSpliterator()Ljava/util/Spliterator;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    #@d
    .line 590
    :goto_0
    return-void

    #@e
    .line 595
    :cond_0
    invoke-super {p0, p1}, Ljava/util/stream/ReferencePipeline;->forEachOrdered(Ljava/util/function/Consumer;)V

    #@11
    goto :goto_0
.end method

.method public final opIsStateful()Z
    .locals 1

    #@0
    .prologue
    .line 569
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>.Head<TE_IN;TE_OUT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public final opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<TE_OUT;>;)",
            "Ljava/util/stream/Sink",
            "<TE_IN;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 574
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>.Head<TE_IN;TE_OUT;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TE_OUT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
