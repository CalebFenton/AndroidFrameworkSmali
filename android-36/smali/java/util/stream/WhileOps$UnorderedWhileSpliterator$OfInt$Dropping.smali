.class final Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;
.super Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dropping"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfInt;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "parent"    # Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;

    .line 915
    invoke-direct {p0, p1, p2}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V

    .line 916
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V
    .registers 4
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava/util/function/IntPredicate;

    .line 911
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V

    .line 912
    return-void
.end method


# virtual methods
.method blacklist makeSpliterator(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;

    .line 947
    new-instance v0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;

    invoke-direct {v0, p1, p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;-><init>(Ljava/util/Spliterator$OfInt;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V

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

    .line 909
    check-cast p1, Ljava/util/Spliterator$OfInt;

    invoke-virtual {p0, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->makeSpliterator(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;

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

    .line 909
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 6
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 920
    iget-boolean v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->takeOrDrop:Z

    if-eqz v0, :cond_35

    .line 921
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->takeOrDrop:Z

    .line 923
    const/4 v0, 0x0

    .line 924
    .local v0, "dropped":Z
    :goto_8
    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->s:Ljava/util/Spliterator;

    check-cast v1, Ljava/util/Spliterator$OfInt;

    invoke-interface {v1, p0}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v1

    move v2, v1

    .local v2, "adv":Z
    if-eqz v1, :cond_25

    .line 925
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->p:Ljava/util/function/IntPredicate;

    iget v3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->t:I

    .line 926
    invoke-interface {v1, v3}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 927
    const/4 v0, 0x1

    goto :goto_8

    .line 931
    :cond_25
    if-eqz v2, :cond_34

    .line 934
    if-eqz v0, :cond_2f

    .line 935
    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 936
    :cond_2f
    iget v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->t:I

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 938
    :cond_34
    return v2

    .line 941
    .end local v0    # "dropped":Z
    .end local v2    # "adv":Z
    :cond_35
    iget-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfInt;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 909
    invoke-super {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 909
    invoke-super {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
