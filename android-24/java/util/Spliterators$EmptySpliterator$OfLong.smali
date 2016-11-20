.class final Ljava/util/Spliterators$EmptySpliterator$OfLong;
.super Ljava/util/Spliterators$EmptySpliterator;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators$EmptySpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Spliterators$EmptySpliterator",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/Spliterator$OfLong;",
        "Ljava/util/function/LongConsumer;",
        ">;",
        "Ljava/util/Spliterator$OfLong;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 876
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfLong;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfLong;"
    invoke-direct {p0}, Ljava/util/Spliterators$EmptySpliterator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 849
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfLong;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfLong;"
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$EmptySpliterator;->forEachRemaining(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 844
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfLong;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfLong;"
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$EmptySpliterator;->tryAdvance(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfLong;
    .locals 1

    #@0
    .prologue
    .line 840
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfLong;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/Spliterators$EmptySpliterator;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfLong;

    #@6
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 840
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfLong;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/Spliterators$EmptySpliterator;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    #@6
    return-object v0
.end method
