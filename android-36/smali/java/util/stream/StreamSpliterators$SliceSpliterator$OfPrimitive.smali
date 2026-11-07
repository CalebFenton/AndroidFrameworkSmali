.class abstract Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.super Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$SliceSpliterator<",
        "TT;TT_SP",
        "LITR;",
        ">;",
        "Ljava/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfPrimitive;JJ)V
    .registers 18
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

    .line 764
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    .local p1, "s":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    invoke-interface {p1}, Ljava/util/Spliterator$OfPrimitive;->estimateSize()J

    move-result-wide v0

    move-wide/from16 v6, p4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v2 .. v11}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJJJ)V

    .line 765
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Spliterator$OfPrimitive;JJJJ)V
    .registers 10
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)V"
        }
    .end annotation

    .line 769
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    .local p1, "s":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    invoke-direct/range {p0 .. p9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;-><init>(Ljava/util/Spliterator;JJJJ)V

    .line 770
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Spliterator$OfPrimitive;JJJJLjava/util/stream/StreamSpliterators-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJJJ)V

    return-void
.end method


# virtual methods
.method protected abstract blacklist emptyConsumer()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_CONS;"
        }
    .end annotation
.end method

.method public whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 793
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    .line 796
    return-void

    .line 798
    :cond_c
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_15

    .line 799
    return-void

    .line 801
    :cond_15
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3a

    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljava/util/Spliterator;

    check-cast v2, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v2}, Ljava/util/Spliterator$OfPrimitive;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceFence:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3a

    .line 803
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 804
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    goto :goto_6a

    .line 807
    :cond_3a
    :goto_3a
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x1

    if-lez v0, :cond_55

    .line 808
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->emptyConsumer()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    .line 809
    iget-wide v3, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    goto :goto_3a

    .line 812
    :cond_55
    :goto_55
    iget-wide v3, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-wide v5, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_6a

    .line 813
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    .line 812
    iget-wide v3, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    goto :goto_55

    .line 816
    :cond_6a
    :goto_6a
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 774
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_d

    .line 777
    return v1

    .line 779
    :cond_d
    :goto_d
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    cmp-long v0, v2, v4

    const-wide/16 v2, 0x1

    if-lez v0, :cond_28

    .line 780
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->emptyConsumer()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    .line 781
    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    goto :goto_d

    .line 784
    :cond_28
    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-wide v6, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_31

    .line 785
    return v1

    .line 787
    :cond_31
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    .line 788
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 757
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    invoke-super {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
