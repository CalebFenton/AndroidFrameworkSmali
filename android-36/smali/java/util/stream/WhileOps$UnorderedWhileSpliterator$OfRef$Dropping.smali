.class final Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;
.super Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dropping"
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
.method constructor blacklist <init>(Ljava/util/Spliterator;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;",
            "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<",
            "TT;>;)V"
        }
    .end annotation

    .line 810
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p2, "parent":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;-><init>(Ljava/util/Spliterator;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;)V

    .line 811
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

    .line 806
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p3, "p":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;-><init>(Ljava/util/Spliterator;ZLjava/util/function/Predicate;)V

    .line 807
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

    .line 842
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;

    invoke-direct {v0, p1, p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;-><init>(Ljava/util/Spliterator;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;)V

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

    .line 815
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-boolean v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->takeOrDrop:Z

    if-eqz v0, :cond_33

    .line 816
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->takeOrDrop:Z

    .line 818
    const/4 v0, 0x0

    .line 819
    .local v0, "dropped":Z
    :goto_8
    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->s:Ljava/util/Spliterator;

    invoke-interface {v1, p0}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v1

    move v2, v1

    .local v2, "adv":Z
    if-eqz v1, :cond_23

    .line 820
    invoke-virtual {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->p:Ljava/util/function/Predicate;

    iget-object v3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->t:Ljava/lang/Object;

    .line 821
    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 822
    const/4 v0, 0x1

    goto :goto_8

    .line 826
    :cond_23
    if-eqz v2, :cond_32

    .line 829
    if-eqz v0, :cond_2d

    .line 830
    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 831
    :cond_2d
    iget-object v1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->t:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 833
    :cond_32
    return v2

    .line 836
    .end local v0    # "dropped":Z
    .end local v2    # "adv":Z
    :cond_33
    iget-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->s:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method
