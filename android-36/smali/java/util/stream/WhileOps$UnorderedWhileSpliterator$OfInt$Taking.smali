.class final Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;
.super Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Taking"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfInt;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "parent"    # Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;

    .line 873
    invoke-direct {p0, p1, p2}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V

    .line 874
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V
    .registers 4
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava/util/function/IntPredicate;

    .line 869
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V

    .line 870
    return-void
.end method


# virtual methods
.method blacklist makeSpliterator(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;

    .line 905
    new-instance v0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;

    invoke-direct {v0, p1, p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;-><init>(Ljava/util/Spliterator$OfInt;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V

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

    .line 867
    check-cast p1, Ljava/util/Spliterator$OfInt;

    invoke-virtual {p0, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->makeSpliterator(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;

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

    .line 867
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 6
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 878
    const/4 v0, 0x1

    .line 879
    .local v0, "test":Z
    iget-boolean v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->takeOrDrop:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    .line 880
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->s:Ljava/util/Spliterator;

    check-cast v1, Ljava/util/Spliterator$OfInt;

    .line 881
    invoke-interface {v1, p0}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->p:Ljava/util/function/IntPredicate;

    iget v3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->t:I

    .line 882
    invoke-interface {v1, v3}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v1

    move v0, v1

    if-eqz v1, :cond_27

    .line 883
    iget v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->t:I

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 884
    return v2

    .line 888
    :cond_27
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->takeOrDrop:Z

    .line 891
    if-nez v0, :cond_31

    .line 892
    iget-object v3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 893
    :cond_31
    return v1
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 900
    iget-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    invoke-super {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    :goto_10
    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 867
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 867
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
