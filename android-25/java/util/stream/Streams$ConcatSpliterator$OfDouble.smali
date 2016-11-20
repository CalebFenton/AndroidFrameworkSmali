.class Ljava/util/stream/Streams$ConcatSpliterator$OfDouble;
.super Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;
.source "Streams.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams$ConcatSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        "Ljava/util/Spliterator$OfDouble;",
        ">;",
        "Ljava/util/Spliterator$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfDouble;Ljava/util/Spliterator$OfDouble;)V
    .locals 1
    .param p1, "aSpliterator"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "bSpliterator"    # Ljava/util/Spliterator$OfDouble;

    #@0
    .prologue
    .line 835
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfDouble;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>.OfDouble;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/Spliterator$OfPrimitive;Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;)V

    #@4
    .line 834
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 808
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfDouble;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>.OfDouble;"
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 1
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 793
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfDouble;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>.OfDouble;"
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 1

    #@0
    .prologue
    .line 717
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfDouble;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>.OfDouble;"
    invoke-virtual {p0}, Ljava/util/stream/Streams$ConcatSpliterator;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfDouble;

    #@6
    return-object v0
.end method
