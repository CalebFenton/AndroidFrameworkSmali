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
        "Ljava/util/stream/SpinedBuffer$OfPrimitive<",
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
.field final synthetic blacklist this$0:Ljava/util/stream/SpinedBuffer$OfDouble;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/SpinedBuffer$OfDouble;IIII)V
    .registers 6
    .param p1, "this$0"    # Ljava/util/stream/SpinedBuffer$OfDouble;
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1041
    iput-object p1, p0, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer$OfDouble;

    .line 1042
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;-><init>(Ljava/util/stream/SpinedBuffer$OfPrimitive;IIII)V

    .line 1044
    return-void
.end method


# virtual methods
.method bridge synthetic blacklist arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1037
    check-cast p1, [D

    check-cast p3, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;->arrayForOne([DILjava/util/function/DoubleConsumer;)V

    return-void
.end method

.method blacklist arrayForOne([DILjava/util/function/DoubleConsumer;)V
    .registers 6
    .param p1, "array"    # [D
    .param p2, "index"    # I
    .param p3, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 1055
    aget-wide v0, p1, p2

    invoke-interface {p3, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1056
    return-void
.end method

.method blacklist arraySpliterator([DII)Ljava/util/Spliterator$OfDouble;
    .registers 5
    .param p1, "array"    # [D
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 1060
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->spliterator([DII)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist arraySpliterator(Ljava/lang/Object;II)Ljava/util/Spliterator$OfPrimitive;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1037
    check-cast p1, [D

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;->arraySpliterator([DII)Ljava/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1037
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method bridge synthetic blacklist newSpliterator(IIII)Ljava/util/Spliterator$OfPrimitive;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1037
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;->newSpliterator(IIII)Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;

    move-result-object p1

    return-object p1
.end method

.method blacklist newSpliterator(IIII)Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;
    .registers 11
    .param p1, "firstSpineIndex"    # I
    .param p2, "lastSpineIndex"    # I
    .param p3, "firstSpineElementIndex"    # I
    .param p4, "lastSpineElementFence"    # I

    .line 1049
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer$OfDouble;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "firstSpineIndex":I
    .end local p2    # "lastSpineIndex":I
    .end local p3    # "firstSpineElementIndex":I
    .end local p4    # "lastSpineElementFence":I
    .local v2, "firstSpineIndex":I
    .local v3, "lastSpineIndex":I
    .local v4, "firstSpineElementIndex":I
    .local v5, "lastSpineElementFence":I
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer$OfDouble;IIII)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1037
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 2

    .line 1037
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    return-object v0
.end method
