.class final Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;
.super Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt$-java_util_function_IntConsumer_emptyConsumer__LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/Spliterator$OfInt;",
        "Ljava/util/function/IntConsumer;",
        ">;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_StreamSpliterators$SliceSpliterator$OfInt_lambda$15(I)V
    .locals 0
    .param p0, "e"    # I

    #@0
    .prologue
    .line 0
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator$OfInt;JJ)V
    .locals 0
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J

    #@0
    .prologue
    .line 823
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJ)V

    #@3
    .line 822
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator$OfInt;JJJJ)V
    .locals 12
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    #@0
    .prologue
    .line 828
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
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
    .line 827
    return-void
.end method


# virtual methods
.method protected bridge synthetic emptyConsumer()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 839
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;->emptyConsumer()Ljava/util/function/IntConsumer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected emptyConsumer()Ljava/util/function/IntConsumer;
    .locals 1

    #@0
    .prologue
    .line 840
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt$-java_util_function_IntConsumer_emptyConsumer__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt$-java_util_function_IntConsumer_emptyConsumer__LambdaImpl0;-><init>()V

    #@5
    return-object v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 0
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 791
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method protected makeSpliterator(Ljava/util/Spliterator$OfInt;JJJJ)Ljava/util/Spliterator$OfInt;
    .locals 10
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    #@0
    .prologue
    .line 835
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;

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
    invoke-direct/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;JJJJ)V

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
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    move-object v1, p1

    #@1
    .line 832
    check-cast v1, Ljava/util/Spliterator$OfInt;

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
    invoke-virtual/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;->makeSpliterator(Ljava/util/Spliterator$OfInt;JJJJ)Ljava/util/Spliterator$OfInt;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 772
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfInt;
    .locals 1

    #@0
    .prologue
    .line 634
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfInt;

    #@6
    return-object v0
.end method
