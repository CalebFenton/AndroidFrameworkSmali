.class final Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;
.super Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
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
        "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator",
        "<TT;",
        "Ljava/util/Spliterator",
        "<TT;>;>;",
        "Ljava/util/Spliterator",
        "<TT;>;",
        "Ljava/util/function/Consumer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field tmpSlot:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Spliterator;JJ)V
    .locals 0
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;JJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 996
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava/util/Spliterator;JJ)V

    #@3
    .line 995
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;",
            "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1000
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p2, "parent":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V

    #@3
    .line 999
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1005
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfRef<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    #@2
    .line 1004
    return-void
.end method

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
    .line 1026
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1028
    const/4 v1, 0x0

    #@4
    .line 1030
    :goto_0
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permitStatus()Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    #@7
    move-result-object v0

    #@8
    .local v0, "permitStatus":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    sget-object v4, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    #@a
    if-eq v0, v4, :cond_5

    #@c
    .line 1031
    sget-object v4, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    #@e
    if-ne v0, v4, :cond_4

    #@10
    .line 1033
    if-nez v1, :cond_2

    #@12
    .line 1034
    new-instance v1, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;

    #@14
    const/16 v4, 0x80

    #@16
    invoke-direct {v1, v4}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;-><init>(I)V

    #@19
    .line 1037
    :goto_1
    const-wide/16 v2, 0x0

    #@1b
    .line 1038
    .local v2, "permitsRequested":J
    :cond_0
    iget-object v4, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    #@1d
    invoke-interface {v4, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_1

    #@23
    const-wide/16 v4, 0x1

    #@25
    add-long/2addr v2, v4

    #@26
    const-wide/16 v4, 0x80

    #@28
    cmp-long v4, v2, v4

    #@2a
    if-ltz v4, :cond_0

    #@2c
    .line 1039
    :cond_1
    const-wide/16 v4, 0x0

    #@2e
    cmp-long v4, v2, v4

    #@30
    if-nez v4, :cond_3

    #@32
    .line 1040
    return-void

    #@33
    .line 1036
    .end local v2    # "permitsRequested":J
    :cond_2
    invoke-virtual {v1}, Ljava/util/stream/StreamSpliterators$ArrayBuffer;->reset()V

    #@36
    goto :goto_1

    #@37
    .line 1041
    .restart local v2    # "permitsRequested":J
    :cond_3
    invoke-virtual {p0, v2, v3}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->acquirePermits(J)J

    #@3a
    move-result-wide v4

    #@3b
    invoke-virtual {v1, p1, v4, v5}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->forEach(Ljava/util/function/Consumer;J)V

    #@3e
    goto :goto_0

    #@3f
    .line 1045
    .end local v2    # "permitsRequested":J
    :cond_4
    iget-object v4, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    #@41
    invoke-interface {v4, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    #@44
    .line 1046
    return-void

    #@45
    .line 1025
    :cond_5
    return-void
.end method

.method protected makeSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1053
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;

    #@2
    invoke-direct {v0, p1, p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;)V

    #@5
    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const-wide/16 v4, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 1010
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1012
    :cond_0
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permitStatus()Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    #@9
    move-result-object v0

    #@a
    sget-object v1, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    #@c
    if-eq v0, v1, :cond_2

    #@e
    .line 1013
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    #@10
    invoke-interface {v0, p0}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 1014
    return v2

    #@17
    .line 1015
    :cond_1
    invoke-virtual {p0, v4, v5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->acquirePermits(J)J

    #@1a
    move-result-wide v0

    #@1b
    cmp-long v0, v0, v4

    #@1d
    if-nez v0, :cond_0

    #@1f
    .line 1016
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    #@21
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@24
    .line 1017
    const/4 v0, 0x0

    #@25
    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    #@27
    .line 1018
    const/4 v0, 0x1

    #@28
    return v0

    #@29
    .line 1021
    :cond_2
    return v2
.end method
