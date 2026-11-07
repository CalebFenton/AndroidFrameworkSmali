.class final Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;
.super Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Taking"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfDouble;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "parent"    # Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;

    .line 1083
    invoke-direct {p0, p1, p2}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V

    .line 1084
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V
    .registers 4
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava/util/function/DoublePredicate;

    .line 1079
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V

    .line 1080
    return-void
.end method


# virtual methods
.method blacklist makeSpliterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator$OfDouble;
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;

    .line 1115
    new-instance v0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;

    invoke-direct {v0, p1, p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;-><init>(Ljava/util/Spliterator$OfDouble;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V

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

    .line 1077
    check-cast p1, Ljava/util/Spliterator$OfDouble;

    invoke-virtual {p0, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->makeSpliterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator$OfDouble;

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

    .line 1077
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 7
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 1088
    const/4 v0, 0x1

    .line 1089
    .local v0, "test":Z
    iget-boolean v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->takeOrDrop:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    .line 1090
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->s:Ljava/util/Spliterator;

    check-cast v1, Ljava/util/Spliterator$OfDouble;

    .line 1091
    invoke-interface {v1, p0}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->p:Ljava/util/function/DoublePredicate;

    iget-wide v3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->t:D

    .line 1092
    invoke-interface {v1, v3, v4}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v1

    move v0, v1

    if-eqz v1, :cond_27

    .line 1093
    iget-wide v3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->t:D

    invoke-interface {p1, v3, v4}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1094
    return v2

    .line 1098
    :cond_27
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->takeOrDrop:Z

    .line 1101
    if-nez v0, :cond_31

    .line 1102
    iget-object v3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1103
    :cond_31
    return v1
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 2

    .line 1110
    iget-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    invoke-super {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    :goto_10
    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1077
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1077
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
