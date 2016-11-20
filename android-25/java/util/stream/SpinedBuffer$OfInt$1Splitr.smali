.class Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;
.super Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/SpinedBuffer$OfPrimitive",
        "<",
        "Ljava/lang/Integer;",
        "[I",
        "Ljava/util/function/IntConsumer;",
        ">.BaseSpliterator<",
        "Ljava/util/Spliterator$OfInt;",
        ">;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/SpinedBuffer$OfInt;


# direct methods
.method constructor <init>(Ljava/util/stream/SpinedBuffer$OfInt;IIII)V
    .locals 0
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I

    #@0
    .prologue
    .line 793
    .local p1, "this$1":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    iput-object p1, p0, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;->this$1:Ljava/util/stream/SpinedBuffer$OfInt;

    #@2
    .line 795
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;-><init>(Ljava/util/stream/SpinedBuffer$OfPrimitive;IIII)V

    #@5
    .line 794
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
    .line 807
    check-cast p1, [I

    #@2
    .end local p1    # "array":Ljava/lang/Object;
    check-cast p3, Ljava/util/function/IntConsumer;

    #@4
    .end local p3    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;->arrayForOne([IILjava/util/function/IntConsumer;)V

    #@7
    return-void
.end method

.method arrayForOne([IILjava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "array"    # [I
    .param p2, "index"    # I
    .param p3, "consumer"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 808
    aget v0, p1, p2

    #@2
    invoke-interface {p3, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    #@5
    .line 807
    return-void
.end method

.method arraySpliterator([III)Ljava/util/Spliterator$OfInt;
    .locals 1
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 813
    add-int v0, p2, p3

    #@2
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->spliterator([III)Ljava/util/Spliterator$OfInt;

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
    .line 812
    check-cast p1, [I

    #@2
    .end local p1    # "array":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;->arraySpliterator([III)Ljava/util/Spliterator$OfInt;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

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
    .line 800
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;->newSpliterator(IIII)Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method newSpliterator(IIII)Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;
    .locals 6
    .param p1, "firstSpineIndex"    # I
    .param p2, "lastSpineIndex"    # I
    .param p3, "firstSpineElementIndex"    # I
    .param p4, "lastSpineElementFence"    # I

    #@0
    .prologue
    .line 802
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;

    #@2
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;->this$1:Ljava/util/stream/SpinedBuffer$OfInt;

    #@4
    move v2, p1

    #@5
    move v3, p2

    #@6
    move v4, p3

    #@7
    move v5, p4

    #@8
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer$OfInt;IIII)V

    #@b
    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 653
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->tryAdvance(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfInt;
    .locals 1

    #@0
    .prologue
    .line 694
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljava/util/Spliterator$OfPrimitive;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfInt;

    #@6
    return-object v0
.end method
