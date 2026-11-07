.class final Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;
.super Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dropping"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfLong;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;
    .param p2, "parent"    # Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;

    .line 1020
    invoke-direct {p0, p1, p2}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V

    .line 1021
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator$OfLong;ZLjava/util/function/LongPredicate;)V
    .registers 4
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava/util/function/LongPredicate;

    .line 1016
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;ZLjava/util/function/LongPredicate;)V

    .line 1017
    return-void
.end method


# virtual methods
.method blacklist makeSpliterator(Ljava/util/Spliterator$OfLong;)Ljava/util/Spliterator$OfLong;
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;

    .line 1052
    new-instance v0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;

    invoke-direct {v0, p1, p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;-><init>(Ljava/util/Spliterator$OfLong;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V

    return-object v0
.end method

.method bridge synthetic blacklist makeSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1014
    check-cast p1, Ljava/util/Spliterator$OfLong;

    invoke-virtual {p0, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->makeSpliterator(Ljava/util/Spliterator$OfLong;)Ljava/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1014
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 7
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 1025
    iget-boolean v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->takeOrDrop:Z

    if-eqz v0, :cond_35

    .line 1026
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->takeOrDrop:Z

    .line 1028
    const/4 v0, 0x0

    .line 1029
    .local v0, "dropped":Z
    :goto_8
    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->s:Ljava/util/Spliterator;

    check-cast v1, Ljava/util/Spliterator$OfLong;

    invoke-interface {v1, p0}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v1

    move v2, v1

    .local v2, "adv":Z
    if-eqz v1, :cond_25

    .line 1030
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->p:Ljava/util/function/LongPredicate;

    iget-wide v3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->t:J

    .line 1031
    invoke-interface {v1, v3, v4}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1032
    const/4 v0, 0x1

    goto :goto_8

    .line 1036
    :cond_25
    if-eqz v2, :cond_34

    .line 1039
    if-eqz v0, :cond_2f

    .line 1040
    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1041
    :cond_2f
    iget-wide v3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->t:J

    invoke-interface {p1, v3, v4}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1043
    :cond_34
    return v2

    .line 1046
    .end local v0    # "dropped":Z
    .end local v2    # "adv":Z
    :cond_35
    iget-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfLong;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfLong;
    .registers 2

    .line 1014
    invoke-super {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfLong;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1014
    invoke-super {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
