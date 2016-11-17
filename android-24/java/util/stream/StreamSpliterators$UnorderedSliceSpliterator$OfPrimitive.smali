.class abstract Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.super Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_BUFF:",
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive",
        "<TT_CONS;>;T_SP",
        "LITR::Ljava/util/Spliterator$OfPrimitive",
        "<TT;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator",
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
    .locals 0
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1071
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava/util/Spliterator;JJ)V

    #@3
    .line 1070
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive",
            "<TT;TT_CONS;TT_BUFF;TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1075
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    .local p2, "parent":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V

    #@3
    .line 1074
    return-void
.end method


# virtual methods
.method protected abstract acceptConsumed(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation
.end method

.method protected abstract bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_BUFF;"
        }
    .end annotation
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1099
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1101
    const/4 v1, 0x0

    #@4
    .line 1103
    :goto_0
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permitStatus()Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    #@7
    move-result-object v0

    #@8
    .local v0, "permitStatus":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    sget-object v5, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    #@a
    if-eq v0, v5, :cond_5

    #@c
    .line 1104
    sget-object v5, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    #@e
    if-ne v0, v5, :cond_4

    #@10
    .line 1106
    if-nez v1, :cond_2

    #@12
    .line 1107
    const/16 v5, 0x80

    #@14
    invoke-virtual {p0, v5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;

    #@17
    move-result-object v1

    #@18
    .line 1111
    :goto_1
    move-object v4, v1

    #@19
    .line 1112
    .local v4, "sbc":Ljava/lang/Object;, "TT_CONS;"
    const-wide/16 v2, 0x0

    #@1b
    .line 1113
    .local v2, "permitsRequested":J
    :cond_0
    iget-object v5, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    #@1d
    check-cast v5, Ljava/util/Spliterator$OfPrimitive;

    #@1f
    invoke-interface {v5, v4}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_1

    #@25
    const-wide/16 v6, 0x1

    #@27
    add-long/2addr v2, v6

    #@28
    const-wide/16 v6, 0x80

    #@2a
    cmp-long v5, v2, v6

    #@2c
    if-ltz v5, :cond_0

    #@2e
    .line 1114
    :cond_1
    const-wide/16 v6, 0x0

    #@30
    cmp-long v5, v2, v6

    #@32
    if-nez v5, :cond_3

    #@34
    .line 1115
    return-void

    #@35
    .line 1109
    .end local v2    # "permitsRequested":J
    .end local v4    # "sbc":Ljava/lang/Object;, "TT_CONS;"
    :cond_2
    invoke-virtual {v1}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->reset()V

    #@38
    goto :goto_1

    #@39
    .line 1116
    .restart local v2    # "permitsRequested":J
    .restart local v4    # "sbc":Ljava/lang/Object;, "TT_CONS;"
    :cond_3
    invoke-virtual {p0, v2, v3}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->acquirePermits(J)J

    #@3c
    move-result-wide v6

    #@3d
    invoke-virtual {v1, p1, v6, v7}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->forEach(Ljava/lang/Object;J)V

    #@40
    goto :goto_0

    #@41
    .line 1120
    .end local v2    # "permitsRequested":J
    .end local v4    # "sbc":Ljava/lang/Object;, "TT_CONS;"
    :cond_4
    iget-object v5, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    #@43
    check-cast v5, Ljava/util/Spliterator$OfPrimitive;

    #@45
    invoke-interface {v5, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    #@48
    .line 1121
    return-void

    #@49
    .line 1098
    :cond_5
    return-void
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
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    const-wide/16 v6, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 1080
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1082
    move-object v0, p0

    #@7
    .line 1084
    .local v0, "consumer":Ljava/lang/Object;, "TT_CONS;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permitStatus()Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    #@a
    move-result-object v1

    #@b
    sget-object v2, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    #@d
    if-eq v1, v2, :cond_2

    #@f
    .line 1085
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    #@11
    check-cast v1, Ljava/util/Spliterator$OfPrimitive;

    #@13
    invoke-interface {v1, p0}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1

    #@19
    .line 1086
    return v4

    #@1a
    .line 1087
    :cond_1
    invoke-virtual {p0, v6, v7}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->acquirePermits(J)J

    #@1d
    move-result-wide v2

    #@1e
    cmp-long v1, v2, v6

    #@20
    if-nez v1, :cond_0

    #@22
    .line 1088
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->acceptConsumed(Ljava/lang/Object;)V

    #@25
    .line 1089
    const/4 v1, 0x1

    #@26
    return v1

    #@27
    .line 1092
    :cond_2
    return v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 971
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    #@6
    return-object v0
.end method
