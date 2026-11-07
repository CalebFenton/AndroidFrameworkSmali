.class public abstract Ljava/util/stream/PipelineHelper;
.super Ljava/lang/Object;
.source "PipelineHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 57
    .local p0, "this":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract greylist-max-o copyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Sink<",
            "TP_IN;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation
.end method

.method abstract blacklist copyIntoWithCancel(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Sink<",
            "TP_IN;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)Z"
        }
    .end annotation
.end method

.method public abstract greylist-max-o evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;)",
            "Ljava/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation
.end method

.method abstract greylist-max-o exactOutputSizeIfKnown(Ljava/util/Spliterator;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)J"
        }
    .end annotation
.end method

.method abstract greylist-max-o getSourceShape()Ljava/util/stream/StreamShape;
.end method

.method public abstract greylist-max-o getStreamAndOpFlags()I
.end method

.method abstract greylist-max-o makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;)",
            "Ljava/util/stream/Node$Builder<",
            "TP_OUT;>;"
        }
    .end annotation
.end method

.method abstract greylist-max-o wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "S::",
            "Ljava/util/stream/Sink<",
            "TP_OUT;>;>(TS;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)TS;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Sink<",
            "TP_OUT;>;)",
            "Ljava/util/stream/Sink<",
            "TP_IN;>;"
        }
    .end annotation
.end method

.method abstract greylist-max-o wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/Spliterator<",
            "TP_OUT;>;"
        }
    .end annotation
.end method
