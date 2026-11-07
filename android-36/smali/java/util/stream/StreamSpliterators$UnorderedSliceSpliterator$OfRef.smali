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
        "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<",
        "TT;",
        "Ljava/util/Spliterator<",
        "TT;>;>;",
        "Ljava/util/Spliterator<",
        "TT;>;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field blacklist tmpSlot:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator;JJ)V
    .registers 6
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;JJ)V"
        }
    .end annotation

    .line 1004
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava/util/Spliterator;JJ)V

    .line 1005
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;",
            "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<",
            "TT;>;)V"
        }
    .end annotation

    .line 1008
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p2, "parent":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V

    .line 1009
    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1013
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    .line 1014
    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1034
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    const/4 v0, 0x0

    .line 1038
    .local v0, "sb":Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    :goto_4
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->permitStatus()Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v1

    move-object v2, v1

    .local v2, "permitStatus":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    sget-object v3, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-eq v1, v3, :cond_49

    .line 1039
    sget-object v1, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-ne v2, v1, :cond_43

    .line 1041
    if-nez v0, :cond_1c

    .line 1042
    new-instance v1, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;

    iget v3, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->chunkSize:I

    invoke-direct {v1, v3}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;-><init>(I)V

    move-object v0, v1

    .end local v0    # "sb":Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    .local v1, "sb":Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    goto :goto_1f

    .line 1044
    .end local v1    # "sb":Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    .restart local v0    # "sb":Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    :cond_1c
    invoke-virtual {v0}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->reset()V

    .line 1045
    :goto_1f
    const-wide/16 v3, 0x0

    .line 1046
    .local v3, "permitsRequested":J
    :cond_21
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    invoke-interface {v1, v0}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    move-wide v3, v5

    iget v1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->chunkSize:I

    int-to-long v7, v1

    cmp-long v1, v5, v7

    if-ltz v1, :cond_21

    .line 1047
    :cond_34
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3b

    .line 1048
    return-void

    .line 1049
    :cond_3b
    invoke-virtual {p0, v3, v4}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->acquirePermits(J)J

    move-result-wide v5

    invoke-virtual {v0, p1, v5, v6}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->forEach(Ljava/util/function/Consumer;J)V

    .line 1050
    .end local v3    # "permitsRequested":J
    goto :goto_4

    .line 1053
    :cond_43
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    invoke-interface {v1, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 1054
    return-void

    .line 1057
    :cond_49
    return-void
.end method

.method protected blacklist makeSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1061
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;

    invoke-direct {v0, p1, p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;)V

    return-object v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1018
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    :cond_3
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->permitStatus()Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v0

    sget-object v1, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_29

    .line 1021
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    invoke-interface {v0, p0}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1022
    return v2

    .line 1023
    :cond_15
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->acquirePermits(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 1024
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1025
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    .line 1026
    const/4 v0, 0x1

    return v0

    .line 1029
    :cond_29
    return v2
.end method
