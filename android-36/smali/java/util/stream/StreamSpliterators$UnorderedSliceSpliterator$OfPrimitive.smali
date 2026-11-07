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
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive<",
        "TT_CONS;>;T_SP",
        "LITR::Ljava/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<",
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
    .registers 6
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

    .line 1079
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava/util/Spliterator;JJ)V

    .line 1080
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<",
            "TT;TT_CONS;TT_BUFF;TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .line 1083
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    .local p2, "parent":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V

    .line 1084
    return-void
.end method


# virtual methods
.method protected abstract blacklist acceptConsumed(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation
.end method

.method protected abstract blacklist bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_BUFF;"
        }
    .end annotation
.end method

.method public whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 1107
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    const/4 v0, 0x0

    .line 1111
    .local v0, "sb":Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;, "TT_BUFF;"
    :goto_4
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->permitStatus()Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v1

    move-object v2, v1

    .local v2, "permitStatus":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    sget-object v3, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-eq v1, v3, :cond_4c

    .line 1112
    sget-object v1, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-ne v2, v1, :cond_44

    .line 1114
    if-nez v0, :cond_1a

    .line 1115
    iget v1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->chunkSize:I

    invoke-virtual {p0, v1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;

    move-result-object v0

    goto :goto_1d

    .line 1117
    :cond_1a
    invoke-virtual {v0}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->reset()V

    .line 1119
    :goto_1d
    move-object v1, v0

    .line 1120
    .local v1, "sbc":Ljava/lang/Object;, "TT_CONS;"
    const-wide/16 v3, 0x0

    .line 1121
    .local v3, "permitsRequested":J
    :cond_20
    iget-object v5, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->s:Ljava/util/Spliterator;

    check-cast v5, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v5, v1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    move-wide v3, v5

    iget v7, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->chunkSize:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_20

    .line 1122
    :cond_35
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_3c

    .line 1123
    return-void

    .line 1124
    :cond_3c
    invoke-virtual {p0, v3, v4}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->acquirePermits(J)J

    move-result-wide v5

    invoke-virtual {v0, p1, v5, v6}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->forEach(Ljava/lang/Object;J)V

    .line 1125
    .end local v1    # "sbc":Ljava/lang/Object;, "TT_CONS;"
    .end local v3    # "permitsRequested":J
    goto :goto_4

    .line 1128
    :cond_44
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->s:Ljava/util/Spliterator;

    check-cast v1, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v1, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 1129
    return-void

    .line 1132
    :cond_4c
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 1088
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    move-object v0, p0

    .line 1092
    .local v0, "consumer":Ljava/lang/Object;, "TT_CONS;"
    :cond_4
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->permitStatus()Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v1

    sget-object v2, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_27

    .line 1093
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->s:Ljava/util/Spliterator;

    check-cast v1, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v1, v0}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1094
    return v3

    .line 1095
    :cond_18
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->acquirePermits(J)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-nez v1, :cond_4

    .line 1096
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->acceptConsumed(Ljava/lang/Object;)V

    .line 1097
    const/4 v1, 0x1

    return v1

    .line 1100
    :cond_27
    return v3
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1071
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    invoke-super {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
