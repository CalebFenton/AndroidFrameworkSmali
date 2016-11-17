.class final Ljava/util/SplittableRandom$RandomLongsSpliterator;
.super Ljava/lang/Object;
.source "SplittableRandom.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/SplittableRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomLongsSpliterator"
.end annotation


# instance fields
.field final bound:J

.field final fence:J

.field index:J

.field final origin:J

.field final rng:Ljava/util/SplittableRandom;


# direct methods
.method constructor <init>(Ljava/util/SplittableRandom;JJJJ)V
    .locals 0
    .param p1, "rng"    # Ljava/util/SplittableRandom;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # J
    .param p8, "bound"    # J

    #@0
    .prologue
    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 896
    iput-object p1, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava/util/SplittableRandom;

    #@5
    iput-wide p2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    #@7
    iput-wide p4, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    #@9
    .line 897
    iput-wide p6, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    #@b
    iput-wide p8, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    #@d
    .line 895
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 911
    const/16 v0, 0x4540

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 4

    #@0
    .prologue
    .line 907
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    #@2
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    #@4
    sub-long/2addr v0, v2

    #@5
    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 926
    check-cast p1, Ljava/util/function/LongConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom$RandomLongsSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 12
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 927
    if-nez p1, :cond_0

    #@2
    new-instance v9, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v9

    #@8
    .line 928
    :cond_0
    iget-wide v4, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    #@a
    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    #@c
    .line 929
    .local v2, "f":J
    cmp-long v9, v4, v2

    #@e
    if-gez v9, :cond_2

    #@10
    .line 930
    iput-wide v2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    #@12
    .line 931
    iget-object v8, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava/util/SplittableRandom;

    #@14
    .line 932
    .local v8, "r":Ljava/util/SplittableRandom;
    iget-wide v6, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    #@16
    .local v6, "o":J
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    #@18
    .line 934
    .local v0, "b":J
    :cond_1
    invoke-virtual {v8, v6, v7, v0, v1}, Ljava/util/SplittableRandom;->internalNextLong(JJ)J

    #@1b
    move-result-wide v10

    #@1c
    invoke-interface {p1, v10, v11}, Ljava/util/function/LongConsumer;->accept(J)V

    #@1f
    .line 935
    const-wide/16 v10, 0x1

    #@21
    add-long/2addr v4, v10

    #@22
    cmp-long v9, v4, v2

    #@24
    if-ltz v9, :cond_1

    #@26
    .line 926
    .end local v0    # "b":J
    .end local v6    # "o":J
    .end local v8    # "r":Ljava/util/SplittableRandom;
    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 915
    check-cast p1, Ljava/util/function/LongConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom$RandomLongsSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 10
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 916
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 917
    :cond_0
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    #@a
    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    #@c
    .line 918
    .local v0, "f":J
    cmp-long v4, v2, v0

    #@e
    if-gez v4, :cond_1

    #@10
    .line 919
    iget-object v4, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava/util/SplittableRandom;

    #@12
    iget-wide v6, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    #@14
    iget-wide v8, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    #@16
    invoke-virtual {v4, v6, v7, v8, v9}, Ljava/util/SplittableRandom;->internalNextLong(JJ)J

    #@19
    move-result-wide v4

    #@1a
    invoke-interface {p1, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    #@1d
    .line 920
    const-wide/16 v4, 0x1

    #@1f
    add-long/2addr v4, v2

    #@20
    iput-wide v4, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    #@22
    .line 921
    const/4 v4, 0x1

    #@23
    return v4

    #@24
    .line 923
    :cond_1
    const/4 v4, 0x0

    #@25
    return v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfLong;
    .locals 1

    #@0
    .prologue
    .line 900
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomLongsSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomLongsSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 900
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomLongsSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomLongsSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 900
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomLongsSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomLongsSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public trySplit()Ljava/util/SplittableRandom$RandomLongsSpliterator;
    .locals 10

    #@0
    .prologue
    .line 901
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    #@2
    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    #@4
    add-long/2addr v0, v2

    #@5
    const/4 v6, 0x1

    #@6
    ushr-long v4, v0, v6

    #@8
    .line 902
    .local v4, "m":J
    cmp-long v0, v4, v2

    #@a
    if-gtz v0, :cond_0

    #@c
    const/4 v0, 0x0

    #@d
    :goto_0
    return-object v0

    #@e
    .line 903
    :cond_0
    new-instance v0, Ljava/util/SplittableRandom$RandomLongsSpliterator;

    #@10
    iget-object v1, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava/util/SplittableRandom;

    #@12
    invoke-virtual {v1}, Ljava/util/SplittableRandom;->split()Ljava/util/SplittableRandom;

    #@15
    move-result-object v1

    #@16
    iput-wide v4, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    #@18
    iget-wide v6, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    #@1a
    iget-wide v8, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    #@1c
    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava/util/SplittableRandom;JJJJ)V

    #@1f
    goto :goto_0
.end method
