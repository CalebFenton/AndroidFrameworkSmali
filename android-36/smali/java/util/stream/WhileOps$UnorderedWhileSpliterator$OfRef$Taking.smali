.class final Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;
.super Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Taking"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;",
            "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<",
            "TT;>;)V"
        }
    .end annotation

    .line 768
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p2, "parent":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;-><init>(Ljava/util/Spliterator;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;)V

    .line 769
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator;ZLjava/util/function/Predicate;)V
    .registers 4
    .param p2, "noSplitting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;Z",
            "Ljava/util/function/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 764
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p3, "p":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;-><init>(Ljava/util/Spliterator;ZLjava/util/function/Predicate;)V

    .line 765
    return-void
.end method


# virtual methods
.method blacklist makeSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;
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

    .line 800
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;

    invoke-direct {v0, p1, p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;-><init>(Ljava/util/Spliterator;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;)V

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

    .line 773
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v0, 0x1

    .line 774
    .local v0, "test":Z
    iget-boolean v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->takeOrDrop:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    .line 775
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->s:Ljava/util/Spliterator;

    .line 776
    invoke-interface {v1, p0}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->p:Ljava/util/function/Predicate;

    iget-object v3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->t:Ljava/lang/Object;

    .line 777
    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    if-eqz v1, :cond_25

    .line 778
    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->t:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 779
    return v2

    .line 783
    :cond_25
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->takeOrDrop:Z

    .line 786
    if-nez v0, :cond_2f

    .line 787
    iget-object v3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 788
    :cond_2f
    return v1
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 795
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    iget-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-super {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    :goto_e
    return-object v0
.end method
