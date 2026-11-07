.class final Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;
.super Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dropping"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfDouble;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "parent"    # Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;

    .line 1125
    invoke-direct {p0, p1, p2}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V

    .line 1126
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V
    .registers 4
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava/util/function/DoublePredicate;

    .line 1121
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V

    .line 1122
    return-void
.end method


# virtual methods
.method blacklist makeSpliterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator$OfDouble;
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;

    .line 1157
    new-instance v0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;

    invoke-direct {v0, p1, p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;-><init>(Ljava/util/Spliterator$OfDouble;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V

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

    .line 1119
    check-cast p1, Ljava/util/Spliterator$OfDouble;

    invoke-virtual {p0, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->makeSpliterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator$OfDouble;

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

    .line 1119
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 7
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 1130
    iget-boolean v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->takeOrDrop:Z

    if-eqz v0, :cond_35

    .line 1131
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->takeOrDrop:Z

    .line 1133
    const/4 v0, 0x0

    .line 1134
    .local v0, "dropped":Z
    :goto_8
    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->s:Ljava/util/Spliterator;

    check-cast v1, Ljava/util/Spliterator$OfDouble;

    invoke-interface {v1, p0}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v1

    move v2, v1

    .local v2, "adv":Z
    if-eqz v1, :cond_25

    .line 1135
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->p:Ljava/util/function/DoublePredicate;

    iget-wide v3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->t:D

    .line 1136
    invoke-interface {v1, v3, v4}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1137
    const/4 v0, 0x1

    goto :goto_8

    .line 1141
    :cond_25
    if-eqz v2, :cond_34

    .line 1144
    if-eqz v0, :cond_2f

    .line 1145
    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1146
    :cond_2f
    iget-wide v3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->t:D

    invoke-interface {p1, v3, v4}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1148
    :cond_34
    return v2

    .line 1151
    .end local v0    # "dropped":Z
    .end local v2    # "adv":Z
    :cond_35
    iget-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 2

    .line 1119
    invoke-super {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1119
    invoke-super {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
