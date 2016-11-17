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
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;,
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;,
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;,
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field fence:J

.field index:J

.field s:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field final sliceFence:J

.field final sliceOrigin:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->-assertionsDisabled:Z

    #@b
    .line 610
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Spliterator;JJJJ)V
    .locals 2
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
    .line 623
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator;, "TT_SPLITR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 624
    sget-boolean v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->-assertionsDisabled:Z

    #@5
    if-nez v0, :cond_0

    #@7
    const/16 v0, 0x4000

    #@9
    invoke-interface {p1, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    new-instance v0, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v0

    #@15
    .line 625
    :cond_0
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    #@17
    .line 626
    iput-wide p2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    #@19
    .line 627
    iput-wide p4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    #@1b
    .line 628
    iput-wide p6, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@1d
    .line 629
    iput-wide p8, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@1f
    .line 623
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 686
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    #@2
    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public estimateSize()J
    .locals 6

    #@0
    .prologue
    .line 681
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    #@2
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gez v0, :cond_0

    #@8
    .line 682
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@a
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    #@c
    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@e
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@11
    move-result-wide v2

    #@12
    sub-long/2addr v0, v2

    #@13
    .line 681
    :goto_0
    return-wide v0

    #@14
    .line 682
    :cond_0
    const-wide/16 v0, 0x0

    #@16
    goto :goto_0
.end method

.method protected abstract makeSpliterator(Ljava/util/Spliterator;JJJJ)Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    const/4 v6, 0x0

    #@1
    .line 635
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    #@3
    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@5
    cmp-long v0, v2, v4

    #@7
    if-ltz v0, :cond_0

    #@9
    .line 636
    return-object v6

    #@a
    .line 638
    :cond_0
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@c
    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@e
    cmp-long v0, v2, v4

    #@10
    if-ltz v0, :cond_2

    #@12
    .line 639
    return-object v6

    #@13
    .line 652
    .local v1, "leftSplit":Ljava/util/Spliterator;, "TT_SPLITR;"
    :cond_1
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@15
    invoke-interface {v1}, Ljava/util/Spliterator;->estimateSize()J

    #@18
    move-result-wide v4

    #@19
    add-long v10, v2, v4

    #@1b
    .line 653
    .local v10, "leftSplitFenceUnbounded":J
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    #@1d
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@20
    move-result-wide v8

    #@21
    .line 654
    .local v8, "leftSplitFence":J
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    #@23
    cmp-long v0, v2, v8

    #@25
    if-ltz v0, :cond_3

    #@27
    .line 658
    iput-wide v8, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@29
    .line 648
    .end local v1    # "leftSplit":Ljava/util/Spliterator;, "TT_SPLITR;"
    .end local v8    # "leftSplitFence":J
    .end local v10    # "leftSplitFenceUnbounded":J
    :cond_2
    :goto_0
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    #@2b
    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    #@2e
    move-result-object v1

    #@2f
    .line 649
    .restart local v1    # "leftSplit":Ljava/util/Spliterator;, "TT_SPLITR;"
    if-nez v1, :cond_1

    #@31
    .line 650
    return-object v6

    #@32
    .line 660
    .restart local v8    # "leftSplitFence":J
    .restart local v10    # "leftSplitFenceUnbounded":J
    :cond_3
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    #@34
    cmp-long v0, v8, v2

    #@36
    if-ltz v0, :cond_4

    #@38
    .line 664
    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    #@3a
    .line 665
    iput-wide v8, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@3c
    goto :goto_0

    #@3d
    .line 667
    :cond_4
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@3f
    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    #@41
    cmp-long v0, v2, v4

    #@43
    if-ltz v0, :cond_5

    #@45
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    #@47
    cmp-long v0, v10, v2

    #@49
    if-gtz v0, :cond_5

    #@4b
    .line 670
    iput-wide v8, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@4d
    .line 671
    return-object v1

    #@4e
    .line 675
    :cond_5
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    #@50
    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    #@52
    iget-wide v6, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@54
    iput-wide v8, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@56
    move-object v0, p0

    #@57
    invoke-virtual/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->makeSpliterator(Ljava/util/Spliterator;JJJJ)Ljava/util/Spliterator;

    #@5a
    move-result-object v0

    #@5b
    return-object v0
.end method
