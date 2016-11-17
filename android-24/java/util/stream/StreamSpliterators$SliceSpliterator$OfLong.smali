.class final Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;
.super Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong$-java_util_function_LongConsumer_emptyConsumer__LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/Spliterator$OfLong;",
        "Ljava/util/function/LongConsumer;",
        ">;",
        "Ljava/util/Spliterator$OfLong;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_StreamSpliterators$SliceSpliterator$OfLong_lambda$16(J)V
    .locals 0
    .param p0, "e"    # J

    #@0
    .prologue
    .line 0
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator$OfLong;JJ)V
    .locals 0
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J

    #@0
    .prologue
    .line 847
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJ)V

    #@3
    .line 846
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator$OfLong;JJJJ)V
    .locals 12
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    #@0
    .prologue
    .line 852
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfLong;"
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
    .line 851
    return-void
.end method


# virtual methods
.method protected bridge synthetic emptyConsumer()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 863
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;->emptyConsumer()Ljava/util/function/LongConsumer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected emptyConsumer()Ljava/util/function/LongConsumer;
    .locals 1

    #@0
    .prologue
    .line 864
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong$-java_util_function_LongConsumer_emptyConsumer__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong$-java_util_function_LongConsumer_emptyConsumer__LambdaImpl0;-><init>()V

    #@5
    return-object v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 0
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 791
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method protected makeSpliterator(Ljava/util/Spliterator$OfLong;JJJJ)Ljava/util/Spliterator$OfLong;
    .locals 10
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    #@0
    .prologue
    .line 859
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

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
    invoke-direct/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;JJJJ)V

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
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    move-object v1, p1

    #@1
    .line 856
    check-cast v1, Ljava/util/Spliterator$OfLong;

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
    invoke-virtual/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;->makeSpliterator(Ljava/util/Spliterator$OfLong;JJJJ)Ljava/util/Spliterator$OfLong;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 1
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 772
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfLong;
    .locals 1

    #@0
    .prologue
    .line 634
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfLong;

    #@6
    return-object v0
.end method
