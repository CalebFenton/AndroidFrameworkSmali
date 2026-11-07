.class Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;
.super Ljdk/internal/util/random/RandomSupport$RandomSpliterator;
.source "RandomSupport.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RandomDoublesSpliterator"
.end annotation


# instance fields
.field final blacklist bound:D

.field final blacklist generatingGenerator:Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

.field final blacklist origin:D


# direct methods
.method constructor blacklist <init>(Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;JJDD)V
    .registers 10
    .param p1, "generatingGenerator"    # Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # D
    .param p8, "bound"    # D

    .line 1817
    invoke-direct {p0, p2, p3, p4, p5}, Ljdk/internal/util/random/RandomSupport$RandomSpliterator;-><init>(JJ)V

    .line 1818
    iput-object p1, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    .line 1819
    iput-wide p6, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->origin:D

    iput-wide p8, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->bound:D

    .line 1820
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1811
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 13
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 1843
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1844
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->fence:J

    .line 1845
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_22

    .line 1846
    iput-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->index:J

    .line 1847
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    .line 1848
    .local v4, "r":Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;
    iget-wide v5, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->origin:D

    .local v5, "o":D
    iget-wide v7, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->bound:D

    .line 1850
    .local v7, "b":D
    :cond_13
    invoke-static {v4, v5, v6, v7, v8}, Ljdk/internal/util/random/RandomSupport;->boundedNextDouble(Ljava/util/random/RandomGenerator;DD)D

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1851
    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    move-wide v0, v9

    cmp-long v9, v9, v2

    if-ltz v9, :cond_13

    .line 1853
    .end local v4    # "r":Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;
    .end local v5    # "o":D
    .end local v7    # "b":D
    :cond_22
    return-void
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

    .line 1811
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 11
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 1832
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->fence:J

    .line 1834
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1f

    .line 1835
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    iget-wide v5, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->origin:D

    iget-wide v7, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->bound:D

    invoke-static {v4, v5, v6, v7, v8}, Ljdk/internal/util/random/RandomSupport;->boundedNextDouble(Ljava/util/random/RandomGenerator;DD)D

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1836
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->index:J

    .line 1837
    const/4 v4, 0x1

    return v4

    .line 1839
    :cond_1f
    const/4 v4, 0x0

    return v4
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 14

    .line 1824
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->fence:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v10

    .local v10, "delta":J
    add-long v4, v2, v10

    .line 1825
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    .line 1826
    :cond_14
    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->index:J

    .line 1827
    iget-object v12, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    .line 1828
    .local v12, "r":Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;
    new-instance v0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;

    long-to-double v6, v10

    invoke-interface {v12, v6, v7}, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;->copyAndJump(D)Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    move-result-object v1

    iget-wide v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->origin:D

    iget-wide v8, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->bound:D

    invoke-direct/range {v0 .. v9}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;-><init>(Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;JJDD)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1811
    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1811
    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
