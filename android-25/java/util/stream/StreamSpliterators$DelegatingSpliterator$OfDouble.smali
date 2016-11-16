.class final Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;
.super Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        "Ljava/util/Spliterator$OfDouble;",
        ">;",
        "Ljava/util/Spliterator$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator$OfDouble;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 600
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>.OfDouble;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator$OfDouble;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;-><init>(Ljava/util/function/Supplier;)V

    #@3
    .line 599
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 572
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>.OfDouble;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 567
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>.OfDouble;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 1

    #@0
    .prologue
    .line 520
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>.OfDouble;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfDouble;

    #@6
    return-object v0
.end method
