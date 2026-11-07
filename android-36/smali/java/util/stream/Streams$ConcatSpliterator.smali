.class abstract Ljava/util/stream/Streams$ConcatSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ConcatSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Streams$ConcatSpliterator$OfDouble;,
        Ljava/util/stream/Streams$ConcatSpliterator$OfLong;,
        Ljava/util/stream/Streams$ConcatSpliterator$OfInt;,
        Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;,
        Ljava/util/stream/Streams$ConcatSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final blacklist aSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field protected final blacklist bSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field blacklist beforeSplit:Z

.field final blacklist unsized:Z


# direct methods
.method public constructor blacklist <init>(Ljava/util/Spliterator;Ljava/util/Spliterator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "TT_SP",
            "LITR;",
            ")V"
        }
    .end annotation

    .line 699
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    .local p1, "aSpliterator":Ljava/util/Spliterator;, "TT_SPLITR;"
    .local p2, "bSpliterator":Ljava/util/Spliterator;, "TT_SPLITR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput-object p1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    .line 701
    iput-object p2, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    .line 705
    invoke-interface {p1}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v1

    invoke-interface {p2}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iput-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->unsized:Z

    .line 706
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 3

    .line 753
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_1e

    .line 755
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v1}, Ljava/util/Spliterator;->characteristics()I

    move-result v1

    and-int/2addr v0, v1

    .line 757
    iget-boolean v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->unsized:Z

    if-eqz v1, :cond_18

    const/16 v1, 0x4040

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    or-int/lit8 v1, v1, 0x5

    not-int v1, v1

    and-int/2addr v0, v1

    .line 755
    return v0

    .line 760
    :cond_1e
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 5

    .line 740
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_1f

    .line 743
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    iget-object v2, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v2}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 744
    .local v0, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_19

    move-wide v2, v0

    goto :goto_1e

    :cond_19
    const-wide v2, 0x7fffffffffffffffL

    :goto_1e
    return-wide v2

    .line 747
    .end local v0    # "size":J
    :cond_1f
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 733
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_9

    .line 734
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 735
    :cond_9
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 736
    return-void
.end method

.method public whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 766
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-nez v0, :cond_b

    .line 768
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0

    .line 767
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 719
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_16

    .line 720
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    .line 721
    .local v0, "hasNext":Z
    if-nez v0, :cond_1c

    .line 722
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    .line 723
    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v1, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    goto :goto_1c

    .line 727
    .end local v0    # "hasNext":Z
    :cond_16
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    .line 728
    .restart local v0    # "hasNext":Z
    :cond_1c
    :goto_1c
    return v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 711
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    goto :goto_d

    :cond_7
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    .line 712
    .local v0, "ret":Ljava/util/Spliterator;, "TT_SPLITR;"
    :goto_d
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    .line 713
    return-object v0
.end method
