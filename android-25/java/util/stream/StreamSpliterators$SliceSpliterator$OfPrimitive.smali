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
        "LITR::Ljava/util/Spliterator$OfPrimitive",
        "<TT;TT_CONS;TT_SP",
        "LITR;",
        ">;T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$SliceSpliterator",
        "<TT;TT_SP",
        "LITR;",
        ">;",
        "Ljava/util/Spliterator$OfPrimitive",
        "<TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfPrimitive;JJ)V
    .locals 10
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 763
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    .local p1, "s":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    const-wide/16 v6, 0x0

    #@2
    invoke-interface {p1}, Ljava/util/Spliterator$OfPrimitive;->estimateSize()J

    #@5
    move-result-wide v0

    #@6
    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    #@9
    move-result-wide v8

    #@a
    move-object v0, p0

    #@b
    move-object v1, p1

    #@c
    move-wide v2, p2

    #@d
    move-wide v4, p4

    #@e
    invoke-direct/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJJJ)V

    #@11
    .line 762
    return-void
.end method

.method private constructor <init>(Ljava/util/Spliterator$OfPrimitive;JJJJ)V
    .locals 0
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

    #@0
    .prologue
    .line 768
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    .local p1, "s":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    invoke-direct/range {p0 .. p9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;-><init>(Ljava/util/Spliterator;JJJJ)V

    #@3
    .line 767
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Spliterator$OfPrimitive;JJJJLjava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;)V
    .locals 0
    .param p1, "s"    # Ljava/util/Spliterator$OfPrimitive;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    invoke-direct/range {p0 .. p9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJJJ)V

    #@3
    return-void
.end method


# virtual methods
.method protected abstract emptyConsumer()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_CONS;"
        }
    .end annotation
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    const-wide/16 v4, 0x1

    #@2
    .line 792
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 794
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    #@7
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@9
    cmp-long v0, v0, v2

    #@b
    if-ltz v0, :cond_0

    #@d
    .line 795
    return-void

    #@e
    .line 797
    :cond_0
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@10
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@12
    cmp-long v0, v0, v2

    #@14
    if-ltz v0, :cond_1

    #@16
    .line 798
    return-void

    #@17
    .line 800
    :cond_1
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@19
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    #@1b
    cmp-long v0, v0, v2

    #@1d
    if-ltz v0, :cond_3

    #@1f
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@21
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    #@23
    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    #@25
    invoke-interface {v0}, Ljava/util/Spliterator$OfPrimitive;->estimateSize()J

    #@28
    move-result-wide v0

    #@29
    add-long/2addr v0, v2

    #@2a
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    #@2c
    cmp-long v0, v0, v2

    #@2e
    if-gtz v0, :cond_3

    #@30
    .line 802
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    #@32
    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    #@34
    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    #@37
    .line 803
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@39
    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@3b
    .line 791
    :cond_2
    return-void

    #@3c
    .line 806
    :cond_3
    :goto_0
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    #@3e
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@40
    cmp-long v0, v0, v2

    #@42
    if-lez v0, :cond_4

    #@44
    .line 807
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    #@46
    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    #@48
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->emptyConsumer()Ljava/lang/Object;

    #@4b
    move-result-object v1

    #@4c
    invoke-interface {v0, v1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@4f
    .line 808
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@51
    add-long/2addr v0, v4

    #@52
    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@54
    goto :goto_0

    #@55
    .line 811
    :cond_4
    :goto_1
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@57
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@59
    cmp-long v0, v0, v2

    #@5b
    if-gez v0, :cond_2

    #@5d
    .line 812
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    #@5f
    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    #@61
    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@64
    .line 811
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@66
    add-long/2addr v0, v4

    #@67
    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@69
    goto :goto_1
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    const-wide/16 v6, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 773
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 775
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    #@8
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@a
    cmp-long v0, v0, v2

    #@c
    if-ltz v0, :cond_0

    #@e
    .line 776
    return v4

    #@f
    .line 778
    :cond_0
    :goto_0
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    #@11
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@13
    cmp-long v0, v0, v2

    #@15
    if-lez v0, :cond_1

    #@17
    .line 779
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    #@19
    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    #@1b
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->emptyConsumer()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    invoke-interface {v0, v1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@22
    .line 780
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@24
    add-long/2addr v0, v6

    #@25
    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@27
    goto :goto_0

    #@28
    .line 783
    :cond_1
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@2a
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@2c
    cmp-long v0, v0, v2

    #@2e
    if-ltz v0, :cond_2

    #@30
    .line 784
    return v4

    #@31
    .line 786
    :cond_2
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@33
    add-long/2addr v0, v6

    #@34
    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@36
    .line 787
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    #@38
    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    #@3a
    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@3d
    move-result v0

    #@3e
    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 634
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    #@6
    return-object v0
.end method
