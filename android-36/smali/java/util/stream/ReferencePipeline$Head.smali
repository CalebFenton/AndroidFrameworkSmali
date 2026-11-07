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
        "Ljava/util/stream/ReferencePipeline<",
        "TE_IN;TE_OUT;>;"
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>(Ljava/util/Spliterator;IZ)V
    .registers 4
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "*>;IZ)V"
        }
    .end annotation

    .line 771
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/ReferencePipeline;-><init>(Ljava/util/Spliterator;IZ)V

    .line 772
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/function/Supplier;IZ)V
    .registers 4
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/util/Spliterator<",
            "*>;>;IZ)V"
        }
    .end annotation

    .line 758
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<*>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/ReferencePipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 759
    return-void
.end method


# virtual methods
.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE_OUT;>;)V"
        }
    .end annotation

    .line 790
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/ReferencePipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_e

    .line 791
    invoke-virtual {p0}, Ljava/util/stream/ReferencePipeline$Head;->sourceStageSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_11

    .line 794
    :cond_e
    invoke-super {p0, p1}, Ljava/util/stream/ReferencePipeline;->forEach(Ljava/util/function/Consumer;)V

    .line 796
    :goto_11
    return-void
.end method

.method public whitelist test-api forEachOrdered(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE_OUT;>;)V"
        }
    .end annotation

    .line 800
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/ReferencePipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_e

    .line 801
    invoke-virtual {p0}, Ljava/util/stream/ReferencePipeline$Head;->sourceStageSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_11

    .line 804
    :cond_e
    invoke-super {p0, p1}, Ljava/util/stream/ReferencePipeline;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 806
    :goto_11
    return-void
.end method

.method public final greylist-max-o opIsStateful()Z
    .registers 2

    .line 777
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final greylist-max-o opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink<",
            "TE_OUT;>;)",
            "Ljava/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation

    .line 783
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TE_OUT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
