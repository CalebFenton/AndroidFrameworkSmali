.class final Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomDoublesSpliterator"
.end annotation


# instance fields
.field final bound:D

.field final fence:J

.field index:J

.field final origin:D


# direct methods
.method constructor <init>(JJDD)V
    .locals 1
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "origin"    # D
    .param p7, "bound"    # D

    #@0
    .prologue
    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 829
    iput-wide p1, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    #@5
    iput-wide p3, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    #@7
    .line 830
    iput-wide p5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    #@9
    iput-wide p7, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    #@b
    .line 828
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 844
    const/16 v0, 0x4540

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 4

    #@0
    .prologue
    .line 840
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    #@2
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

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
    .line 859
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 12
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 860
    if-nez p1, :cond_0

    #@2
    new-instance v9, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v9

    #@8
    .line 861
    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    #@a
    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    #@c
    .line 862
    .local v2, "f":J
    cmp-long v9, v4, v2

    #@e
    if-gez v9, :cond_2

    #@10
    .line 863
    iput-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    #@12
    .line 864
    iget-wide v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    #@14
    .local v6, "o":D
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    #@16
    .line 865
    .local v0, "b":D
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    #@19
    move-result-object v8

    #@1a
    .line 867
    .local v8, "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_1
    invoke-virtual {v8, v6, v7, v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    #@1d
    move-result-wide v10

    #@1e
    invoke-interface {p1, v10, v11}, Ljava/util/function/DoubleConsumer;->accept(D)V

    #@21
    .line 868
    const-wide/16 v10, 0x1

    #@23
    add-long/2addr v4, v10

    #@24
    cmp-long v9, v4, v2

    #@26
    if-ltz v9, :cond_1

    #@28
    .line 859
    .end local v0    # "b":D
    .end local v6    # "o":D
    .end local v8    # "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 848
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 10
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 849
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 850
    :cond_0
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    #@a
    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    #@c
    .line 851
    .local v0, "f":J
    cmp-long v4, v2, v0

    #@e
    if-gez v4, :cond_1

    #@10
    .line 852
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    #@13
    move-result-object v4

    #@14
    iget-wide v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    #@16
    iget-wide v8, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    #@18
    invoke-virtual {v4, v6, v7, v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    #@1b
    move-result-wide v4

    #@1c
    invoke-interface {p1, v4, v5}, Ljava/util/function/DoubleConsumer;->accept(D)V

    #@1f
    .line 853
    const-wide/16 v4, 0x1

    #@21
    add-long/2addr v4, v2

    #@22
    iput-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    #@24
    .line 854
    const/4 v4, 0x1

    #@25
    return v4

    #@26
    .line 856
    :cond_1
    const/4 v4, 0x0

    #@27
    return v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 1

    #@0
    .prologue
    .line 833
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 833
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 833
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;
    .locals 10

    #@0
    .prologue
    .line 834
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    #@2
    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    #@4
    add-long/2addr v0, v2

    #@5
    const/4 v6, 0x1

    #@6
    ushr-long v4, v0, v6

    #@8
    .line 835
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
    .line 836
    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    #@10
    iput-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    #@12
    iget-wide v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    #@14
    iget-wide v8, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    #@16
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    #@19
    goto :goto_0
.end method
