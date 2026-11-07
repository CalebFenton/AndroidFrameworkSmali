.class abstract Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;
.super Ljava/util/stream/Streams$ConcatSpliterator;
.source "Streams.java"

# interfaces
.implements Ljava/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams$ConcatSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava/util/stream/Streams$ConcatSpliterator<",
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
.method private constructor blacklist <init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/Spliterator$OfPrimitive;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "TT_SP",
            "LITR;",
            ")V"
        }
    .end annotation

    .line 781
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "aSpliterator":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    .local p2, "bSpliterator":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Streams$ConcatSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;)V

    .line 782
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/Spliterator$OfPrimitive;Ljava/util/stream/Streams-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/Spliterator$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 801
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;->beforeSplit:Z

    if-eqz v0, :cond_b

    .line 802
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;->aSpliterator:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 803
    :cond_b
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;->bSpliterator:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 804
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 787
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;->beforeSplit:Z

    if-eqz v0, :cond_1a

    .line 788
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;->aSpliterator:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    .line 789
    .local v0, "hasNext":Z
    if-nez v0, :cond_22

    .line 790
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;->beforeSplit:Z

    .line 791
    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;->bSpliterator:Ljava/util/Spliterator;

    check-cast v1, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v1, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_22

    .line 795
    .end local v0    # "hasNext":Z
    :cond_1a
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;->bSpliterator:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    .line 796
    .restart local v0    # "hasNext":Z
    :cond_22
    :goto_22
    return v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 777
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    invoke-super {p0}, Ljava/util/stream/Streams$ConcatSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
