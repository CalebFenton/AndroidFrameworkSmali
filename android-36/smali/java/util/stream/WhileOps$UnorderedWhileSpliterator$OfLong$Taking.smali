.class final Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;
.super Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Taking"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfLong;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;
    .param p2, "parent"    # Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;

    .line 978
    invoke-direct {p0, p1, p2}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V

    .line 979
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator$OfLong;ZLjava/util/function/LongPredicate;)V
    .registers 4
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava/util/function/LongPredicate;

    .line 974
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;ZLjava/util/function/LongPredicate;)V

    .line 975
    return-void
.end method


# virtual methods
.method blacklist makeSpliterator(Ljava/util/Spliterator$OfLong;)Ljava/util/Spliterator$OfLong;
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;

    .line 1010
    new-instance v0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;

    invoke-direct {v0, p1, p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;-><init>(Ljava/util/Spliterator$OfLong;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V

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

    .line 972
    check-cast p1, Ljava/util/Spliterator$OfLong;

    invoke-virtual {p0, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->makeSpliterator(Ljava/util/Spliterator$OfLong;)Ljava/util/Spliterator$OfLong;

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

    .line 972
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 7
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 983
    const/4 v0, 0x1

    .line 984
    .local v0, "test":Z
    iget-boolean v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->takeOrDrop:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    .line 985
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->s:Ljava/util/Spliterator;

    check-cast v1, Ljava/util/Spliterator$OfLong;

    .line 986
    invoke-interface {v1, p0}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->p:Ljava/util/function/LongPredicate;

    iget-wide v3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->t:J

    .line 987
    invoke-interface {v1, v3, v4}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v1

    move v0, v1

    if-eqz v1, :cond_27

    .line 988
    iget-wide v3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->t:J

    invoke-interface {p1, v3, v4}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 989
    return v2

    .line 993
    :cond_27
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->takeOrDrop:Z

    .line 996
    if-nez v0, :cond_31

    .line 997
    iget-object v3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 998
    :cond_31
    return v1
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfLong;
    .registers 2

    .line 1005
    iget-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    invoke-super {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfLong;

    :goto_10
    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 972
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 972
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
