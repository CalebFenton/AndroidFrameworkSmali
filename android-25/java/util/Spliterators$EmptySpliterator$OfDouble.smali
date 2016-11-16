.class final Ljava/util/Spliterators$EmptySpliterator$OfDouble;
.super Ljava/util/Spliterators$EmptySpliterator;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators$EmptySpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Spliterators$EmptySpliterator",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/Spliterator$OfDouble;",
        "Ljava/util/function/DoubleConsumer;",
        ">;",
        "Ljava/util/Spliterator$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 882
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfDouble;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfDouble;"
    invoke-direct {p0}, Ljava/util/Spliterators$EmptySpliterator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 849
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfDouble;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfDouble;"
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$EmptySpliterator;->forEachRemaining(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 844
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfDouble;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfDouble;"
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$EmptySpliterator;->tryAdvance(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 1

    #@0
    .prologue
    .line 840
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfDouble;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfDouble;"
    invoke-virtual {p0}, Ljava/util/Spliterators$EmptySpliterator;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfDouble;

    #@6
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 840
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfDouble;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfDouble;"
    invoke-virtual {p0}, Ljava/util/Spliterators$EmptySpliterator;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    #@6
    return-object v0
.end method
