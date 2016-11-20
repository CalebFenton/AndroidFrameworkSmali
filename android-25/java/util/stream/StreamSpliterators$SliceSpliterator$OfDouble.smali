.class final Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;
.super Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble$-java_util_function_DoubleConsumer_emptyConsumer__LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/Spliterator$OfDouble;",
        "Ljava/util/function/DoubleConsumer;",
        ">;",
        "Ljava/util/Spliterator$OfDouble;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_StreamSpliterators$SliceSpliterator$OfDouble_lambda$17(D)V
    .locals 0
    .param p0, "e"    # D

    #@0
    .prologue
    .line 0
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator$OfDouble;JJ)V
    .locals 0
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J

    #@0
    .prologue
    .line 871
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJ)V

    #@3
    .line 870
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator$OfDouble;JJJJ)V
    .locals 12
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    #@0
    .prologue
    .line 876
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    const/4 v10, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-wide v2, p2

    #@4
    move-wide/from16 v4, p4

    #@6
    move-wide/from16 v6, p6

    #@8
    move-wide/from16 v8, p8

    #@a
    invoke-direct/range {v0 .. v10}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJJJLjava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;)V

    #@d
    .line 875
    return-void
.end method


# virtual methods
.method protected bridge synthetic emptyConsumer()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 887
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;->emptyConsumer()Ljava/util/function/DoubleConsumer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected emptyConsumer()Ljava/util/function/DoubleConsumer;
    .locals 1

    #@0
    .prologue
    .line 888
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble$-java_util_function_DoubleConsumer_emptyConsumer__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble$-java_util_function_DoubleConsumer_emptyConsumer__LambdaImpl0;-><init>()V

    #@5
    return-object v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 791
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method protected makeSpliterator(Ljava/util/Spliterator$OfDouble;JJJJ)Ljava/util/Spliterator$OfDouble;
    .locals 10
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    #@0
    .prologue
    .line 883
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    #@2
    move-object v1, p1

    #@3
    move-wide v2, p2

    #@4
    move-wide v4, p4

    #@5
    move-wide/from16 v6, p6

    #@7
    move-wide/from16 v8, p8

    #@9
    invoke-direct/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;JJJJ)V

    #@c
    return-object v0
.end method

.method protected bridge synthetic makeSpliterator(Ljava/util/Spliterator;JJJJ)Ljava/util/Spliterator;
    .locals 10
    .param p1, "s"    # Ljava/util/Spliterator;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    move-object v1, p1

    #@1
    .line 880
    check-cast v1, Ljava/util/Spliterator$OfDouble;

    #@3
    move-object v0, p0

    #@4
    move-wide v2, p2

    #@5
    move-wide v4, p4

    #@6
    move-wide/from16 v6, p6

    #@8
    move-wide/from16 v8, p8

    #@a
    invoke-virtual/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;->makeSpliterator(Ljava/util/Spliterator$OfDouble;JJJJ)Ljava/util/Spliterator$OfDouble;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 1
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 772
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 1

    #@0
    .prologue
    .line 634
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfDouble;

    #@6
    return-object v0
.end method
