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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;,
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$SliceSpliterator",
        "<TT;",
        "Ljava/util/Spliterator",
        "<TT;>;>;",
        "Ljava/util/Spliterator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_StreamSpliterators$SliceSpliterator$OfRef_lambda$13(Ljava/lang/Object;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 0
    return-void
.end method

.method static synthetic -java_util_stream_StreamSpliterators$SliceSpliterator$OfRef_lambda$14(Ljava/lang/Object;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 0
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator;JJ)V
    .locals 10
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;JJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 694
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    const-wide/16 v6, 0x0

    #@2
    invoke-interface {p1}, Ljava/util/Spliterator;->estimateSize()J

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
    invoke-direct/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;JJJJ)V

    #@11
    .line 693
    return-void
.end method

.method private constructor <init>(Ljava/util/Spliterator;JJJJ)V
    .locals 0
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;JJJJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 699
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-direct/range {p0 .. p9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;-><init>(Ljava/util/Spliterator;JJJJ)V

    #@3
    .line 698
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const-wide/16 v4, 0x1

    #@2
    .line 730
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 732
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    #@7
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@9
    cmp-long v0, v0, v2

    #@b
    if-ltz v0, :cond_0

    #@d
    .line 733
    return-void

    #@e
    .line 735
    :cond_0
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@10
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@12
    cmp-long v0, v0, v2

    #@14
    if-ltz v0, :cond_1

    #@16
    .line 736
    return-void

    #@17
    .line 738
    :cond_1
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@19
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    #@1b
    cmp-long v0, v0, v2

    #@1d
    if-ltz v0, :cond_3

    #@1f
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@21
    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    #@23
    invoke-interface {v2}, Ljava/util/Spliterator;->estimateSize()J

    #@26
    move-result-wide v2

    #@27
    add-long/2addr v0, v2

    #@28
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    #@2a
    cmp-long v0, v0, v2

    #@2c
    if-gtz v0, :cond_3

    #@2e
    .line 740
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    #@30
    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    #@33
    .line 741
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@35
    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@37
    .line 729
    :cond_2
    return-void

    #@38
    .line 744
    :cond_3
    :goto_0
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    #@3a
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@3c
    cmp-long v0, v0, v2

    #@3e
    if-lez v0, :cond_4

    #@40
    .line 745
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    #@42
    new-instance v1, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;

    #@44
    invoke-direct {v1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;-><init>()V

    #@47
    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    #@4a
    .line 746
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@4c
    add-long/2addr v0, v4

    #@4d
    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@4f
    goto :goto_0

    #@50
    .line 749
    :cond_4
    :goto_1
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@52
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@54
    cmp-long v0, v0, v2

    #@56
    if-gez v0, :cond_2

    #@58
    .line 750
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    #@5a
    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    #@5d
    .line 749
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@5f
    add-long/2addr v0, v4

    #@60
    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@62
    goto :goto_1
.end method

.method protected makeSpliterator(Ljava/util/Spliterator;JJJJ)Ljava/util/Spliterator;
    .locals 10
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;JJJJ)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 706
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

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
    invoke-direct/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;JJJJ)V

    #@c
    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const-wide/16 v6, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 711
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 713
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    #@8
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@a
    cmp-long v0, v0, v2

    #@c
    if-ltz v0, :cond_0

    #@e
    .line 714
    return v4

    #@f
    .line 716
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
    .line 717
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    #@19
    new-instance v1, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;

    #@1b
    invoke-direct {v1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;-><init>()V

    #@1e
    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    #@21
    .line 718
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@23
    add-long/2addr v0, v6

    #@24
    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@26
    goto :goto_0

    #@27
    .line 721
    :cond_1
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@29
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    #@2b
    cmp-long v0, v0, v2

    #@2d
    if-ltz v0, :cond_2

    #@2f
    .line 722
    return v4

    #@30
    .line 724
    :cond_2
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@32
    add-long/2addr v0, v6

    #@33
    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    #@35
    .line 725
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    #@37
    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    #@3a
    move-result v0

    #@3b
    return v0
.end method
