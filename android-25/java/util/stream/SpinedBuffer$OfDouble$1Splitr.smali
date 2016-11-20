.class Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;
.super Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/SpinedBuffer$OfPrimitive",
        "<",
        "Ljava/lang/Double;",
        "[D",
        "Ljava/util/function/DoubleConsumer;",
        ">.BaseSpliterator<",
        "Ljava/util/Spliterator$OfDouble;",
        ">;",
        "Ljava/util/Spliterator$OfDouble;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/SpinedBuffer$OfDouble;


# direct methods
.method constructor <init>(Ljava/util/stream/SpinedBuffer$OfDouble;IIII)V
    .locals 0
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I

    #@0
    .prologue
    .line 1023
    .local p1, "this$1":Ljava/util/stream/SpinedBuffer$OfDouble;, "Ljava/util/stream/SpinedBuffer<TE;>.OfDouble;"
    iput-object p1, p0, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;->this$1:Ljava/util/stream/SpinedBuffer$OfDouble;

    #@2
    .line 1025
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;-><init>(Ljava/util/stream/SpinedBuffer$OfPrimitive;IIII)V

    #@5
    .line 1024
    return-void
.end method


# virtual methods
.method bridge synthetic arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1037
    check-cast p1, [D

    #@2
    .end local p1    # "array":Ljava/lang/Object;
    check-cast p3, Ljava/util/function/DoubleConsumer;

    #@4
    .end local p3    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;->arrayForOne([DILjava/util/function/DoubleConsumer;)V

    #@7
    return-void
.end method

.method arrayForOne([DILjava/util/function/DoubleConsumer;)V
    .locals 2
    .param p1, "array"    # [D
    .param p2, "index"    # I
    .param p3, "consumer"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 1038
    aget-wide v0, p1, p2

    #@2
    invoke-interface {p3, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    #@5
    .line 1037
    return-void
.end method

.method arraySpliterator([DII)Ljava/util/Spliterator$OfDouble;
    .locals 1
    .param p1, "array"    # [D
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 1043
    add-int v0, p2, p3

    #@2
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->spliterator([DII)Ljava/util/Spliterator$OfDouble;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method bridge synthetic arraySpliterator(Ljava/lang/Object;II)Ljava/util/Spliterator$OfPrimitive;
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 1042
    check-cast p1, [D

    #@2
    .end local p1    # "array":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;->arraySpliterator([DII)Ljava/util/Spliterator$OfDouble;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 672
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->forEachRemaining(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method bridge synthetic newSpliterator(IIII)Ljava/util/Spliterator$OfPrimitive;
    .locals 1
    .param p1, "firstSpineIndex"    # I
    .param p2, "lastSpineIndex"    # I
    .param p3, "firstSpineElementIndex"    # I
    .param p4, "lastSpineElementFence"    # I

    #@0
    .prologue
    .line 1030
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;->newSpliterator(IIII)Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method newSpliterator(IIII)Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;
    .locals 6
    .param p1, "firstSpineIndex"    # I
    .param p2, "lastSpineIndex"    # I
    .param p3, "firstSpineElementIndex"    # I
    .param p4, "lastSpineElementFence"    # I

    #@0
    .prologue
    .line 1032
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;

    #@2
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;->this$1:Ljava/util/stream/SpinedBuffer$OfDouble;

    #@4
    move v2, p1

    #@5
    move v3, p2

    #@6
    move v4, p3

    #@7
    move v5, p4

    #@8
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer$OfDouble;IIII)V

    #@b
    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 653
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->tryAdvance(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 1

    #@0
    .prologue
    .line 694
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljava/util/Spliterator$OfPrimitive;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfDouble;

    #@6
    return-object v0
.end method
