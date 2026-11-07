.class abstract Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SliceSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;,
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;,
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;,
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;,
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field blacklist fence:J

.field blacklist index:J

.field blacklist s:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field final blacklist sliceFence:J

.field final blacklist sliceOrigin:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 611
    const-class v0, Ljava/util/stream/StreamSpliterators;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator;JJJJ)V
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

    .line 624
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator;, "TT_SPLITR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    nop

    .line 626
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    .line 627
    iput-wide p2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    .line 628
    iput-wide p4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    .line 629
    iput-wide p6, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    .line 630
    iput-wide p8, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    .line 631
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 687
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 7

    .line 682
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    .line 683
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_16

    :cond_14
    const-wide/16 v0, 0x0

    .line 682
    :goto_16
    return-wide v0
.end method

.method protected abstract blacklist makeSpliterator(Ljava/util/Spliterator;JJJJ)Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 636
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_a

    .line 637
    return-object v1

    .line 639
    :cond_a
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_13

    .line 640
    return-object v1

    .line 649
    :cond_13
    :goto_13
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v3

    .line 650
    .local v3, "leftSplit":Ljava/util/Spliterator;, "TT_SPLITR;"
    if-nez v3, :cond_1c

    .line 651
    return-object v1

    .line 653
    :cond_1c
    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    invoke-interface {v3}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v6

    add-long v12, v4, v6

    .line 654
    .local v12, "leftSplitFenceUnbounded":J
    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 655
    .local v10, "leftSplitFence":J
    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    cmp-long v0, v4, v10

    if-ltz v0, :cond_33

    .line 659
    iput-wide v10, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_3d

    .line 661
    :cond_33
    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    cmp-long v0, v10, v4

    if-ltz v0, :cond_3e

    .line 665
    iput-object v3, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    .line 666
    iput-wide v10, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    .line 678
    .end local v3    # "leftSplit":Ljava/util/Spliterator;, "TT_SPLITR;"
    .end local v10    # "leftSplitFence":J
    .end local v12    # "leftSplitFenceUnbounded":J
    :goto_3d
    goto :goto_13

    .line 668
    .restart local v3    # "leftSplit":Ljava/util/Spliterator;, "TT_SPLITR;"
    .restart local v10    # "leftSplitFence":J
    .restart local v12    # "leftSplitFenceUnbounded":J
    :cond_3e
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4f

    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    cmp-long v0, v12, v0

    if-gtz v0, :cond_4f

    .line 671
    iput-wide v10, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    .line 672
    return-object v3

    .line 676
    :cond_4f
    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v6, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    iget-wide v8, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iput-wide v10, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->makeSpliterator(Ljava/util/Spliterator;JJJJ)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
