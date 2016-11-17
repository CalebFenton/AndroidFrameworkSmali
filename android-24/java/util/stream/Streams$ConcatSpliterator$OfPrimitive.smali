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
        "LITR::Ljava/util/Spliterator$OfPrimitive",
        "<TT;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava/util/stream/Streams$ConcatSpliterator",
        "<TT;TT_SP",
        "LITR;",
        ">;",
        "Ljava/util/Spliterator$OfPrimitive",
        "<TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/Spliterator$OfPrimitive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "TT_SP",
            "LITR;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 789
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "aSpliterator":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    .local p2, "bSpliterator":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Streams$ConcatSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;)V

    #@3
    .line 788
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/Spliterator$OfPrimitive;Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;)V
    .locals 0
    .param p1, "aSpliterator"    # Ljava/util/Spliterator$OfPrimitive;
    .param p2, "bSpliterator"    # Ljava/util/Spliterator$OfPrimitive;

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/Spliterator$OfPrimitive;)V

    #@3
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 809
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 810
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    #@6
    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    #@8
    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    #@b
    .line 811
    :cond_0
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    #@d
    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    #@f
    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    #@12
    .line 808
    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 795
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    iget-boolean v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 796
    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    #@6
    check-cast v1, Ljava/util/Spliterator$OfPrimitive;

    #@8
    invoke-interface {v1, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    .line 797
    .local v0, "hasNext":Z
    if-nez v0, :cond_0

    #@e
    .line 798
    const/4 v1, 0x0

    #@f
    iput-boolean v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    #@11
    .line 799
    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    #@13
    check-cast v1, Ljava/util/Spliterator$OfPrimitive;

    #@15
    invoke-interface {v1, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    .line 804
    :cond_0
    :goto_0
    return v0

    #@1a
    .line 803
    .end local v0    # "hasNext":Z
    :cond_1
    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    #@1c
    check-cast v1, Ljava/util/Spliterator$OfPrimitive;

    #@1e
    invoke-interface {v1, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    .restart local v0    # "hasNext":Z
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 717
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava/util/stream/Streams$ConcatSpliterator;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    #@6
    return-object v0
.end method
