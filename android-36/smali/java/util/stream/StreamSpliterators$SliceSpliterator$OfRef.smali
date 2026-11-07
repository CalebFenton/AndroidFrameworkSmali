.class final Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;
.super Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$SliceSpliterator<",
        "TT;",
        "Ljava/util/Spliterator<",
        "TT;>;>;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator;JJ)V
    .registers 18
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;JJ)V"
        }
    .end annotation

    .line 695
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-interface {p1}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    move-wide/from16 v6, p4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v2 .. v11}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;JJJJ)V

    .line 696
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Spliterator;JJJJ)V
    .registers 10
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;JJJJ)V"
        }
    .end annotation

    .line 700
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-direct/range {p0 .. p9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;-><init>(Ljava/util/Spliterator;JJJJ)V

    .line 701
    return-void
.end method

.method static synthetic blacklist lambda$forEachRemaining$1(Ljava/lang/Object;)V
    .registers 1
    .param p0, "e"    # Ljava/lang/Object;

    .line 746
    return-void
.end method

.method static synthetic blacklist lambda$tryAdvance$0(Ljava/lang/Object;)V
    .registers 1
    .param p0, "e"    # Ljava/lang/Object;

    .line 718
    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 731
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    .line 734
    return-void

    .line 736
    :cond_c
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_15

    .line 737
    return-void

    .line 739
    :cond_15
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_36

    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    invoke-interface {v2}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceFence:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_36

    .line 741
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 742
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_63

    .line 745
    :cond_36
    :goto_36
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x1

    if-lez v0, :cond_50

    .line 746
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    new-instance v3, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 747
    iget-wide v3, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_36

    .line 750
    :cond_50
    :goto_50
    iget-wide v3, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v5, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_63

    .line 751
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 750
    iget-wide v3, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_50

    .line 754
    :cond_63
    :goto_63
    return-void
.end method

.method protected blacklist makeSpliterator(Ljava/util/Spliterator;JJJJ)Ljava/util/Spliterator;
    .registers 20
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;JJJJ)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 707
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;JJJJ)V

    return-object v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 712
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_d

    .line 715
    return v1

    .line 717
    :cond_d
    :goto_d
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    cmp-long v0, v2, v4

    const-wide/16 v2, 0x1

    if-lez v0, :cond_27

    .line 718
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    new-instance v4, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 719
    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_d

    .line 722
    :cond_27
    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v6, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_30

    .line 723
    return v1

    .line 725
    :cond_30
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    .line 726
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method
