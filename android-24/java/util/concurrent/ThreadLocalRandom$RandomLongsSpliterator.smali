.class final Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadLocalRandom;
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


# direct methods
.method constructor <init>(JJJJ)V
    .locals 1
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "origin"    # J
    .param p7, "bound"    # J

    #@0
    .prologue
    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 773
    iput-wide p1, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    #@5
    iput-wide p3, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    #@7
    .line 774
    iput-wide p5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    #@9
    iput-wide p7, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    #@b
    .line 772
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 788
    const/16 v0, 0x4540

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 4

    #@0
    .prologue
    .line 784
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    #@2
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

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
    .line 803
    check-cast p1, Ljava/util/function/LongConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 12
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 804
    if-nez p1, :cond_0

    #@2
    new-instance v9, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v9

    #@8
    .line 805
    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    #@a
    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    #@c
    .line 806
    .local v2, "f":J
    cmp-long v9, v4, v2

    #@e
    if-gez v9, :cond_2

    #@10
    .line 807
    iput-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    #@12
    .line 808
    iget-wide v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    #@14
    .local v6, "o":J
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    #@16
    .line 809
    .local v0, "b":J
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    #@19
    move-result-object v8

    #@1a
    .line 811
    .local v8, "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_1
    invoke-virtual {v8, v6, v7, v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    #@1d
    move-result-wide v10

    #@1e
    invoke-interface {p1, v10, v11}, Ljava/util/function/LongConsumer;->accept(J)V

    #@21
    .line 812
    const-wide/16 v10, 0x1

    #@23
    add-long/2addr v4, v10

    #@24
    cmp-long v9, v4, v2

    #@26
    if-ltz v9, :cond_1

    #@28
    .line 803
    .end local v0    # "b":J
    .end local v6    # "o":J
    .end local v8    # "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 792
    check-cast p1, Ljava/util/function/LongConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

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
    .line 793
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 794
    :cond_0
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    #@a
    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    #@c
    .line 795
    .local v0, "f":J
    cmp-long v4, v2, v0

    #@e
    if-gez v4, :cond_1

    #@10
    .line 796
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    #@13
    move-result-object v4

    #@14
    iget-wide v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    #@16
    iget-wide v8, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    #@18
    invoke-virtual {v4, v6, v7, v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    #@1b
    move-result-wide v4

    #@1c
    invoke-interface {p1, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    #@1f
    .line 797
    const-wide/16 v4, 0x1

    #@21
    add-long/2addr v4, v2

    #@22
    iput-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    #@24
    .line 798
    const/4 v4, 0x1

    #@25
    return v4

    #@26
    .line 800
    :cond_1
    const/4 v4, 0x0

    #@27
    return v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfLong;
    .locals 1

    #@0
    .prologue
    .line 777
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 777
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 777
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;
    .locals 10

    #@0
    .prologue
    .line 778
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    #@2
    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    #@4
    add-long/2addr v0, v2

    #@5
    const/4 v6, 0x1

    #@6
    ushr-long v4, v0, v6

    #@8
    .line 779
    .local v4, "m":J
    cmp-long v0, v4, v2

    #@a
    if-gtz v0, :cond_0

    #@c
    const/4 v1, 0x0

    #@d
    :goto_0
    return-object v1

    #@e
    .line 780
    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    #@10
    iput-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    #@12
    iget-wide v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    #@14
    iget-wide v8, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    #@16
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    #@19
    goto :goto_0
.end method
