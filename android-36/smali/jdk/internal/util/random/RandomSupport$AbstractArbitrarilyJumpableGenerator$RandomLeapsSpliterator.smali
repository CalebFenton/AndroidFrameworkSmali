.class Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;
.super Ljdk/internal/util/random/RandomSupport$RandomSpliterator;
.source "RandomSupport.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RandomLeapsSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljdk/internal/util/random/RandomSupport$RandomSpliterator;",
        "Ljava/util/Spliterator<",
        "Ljava/util/random/RandomGenerator$JumpableGenerator;",
        ">;"
    }
.end annotation


# instance fields
.field final blacklist distance:D

.field blacklist generatingGenerator:Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;


# direct methods
.method constructor blacklist <init>(Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;JJD)V
    .registers 8
    .param p1, "generatingGenerator"    # Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "distance"    # D

    .line 1920
    invoke-direct {p0, p2, p3, p4, p5}, Ljdk/internal/util/random/RandomSupport$RandomSpliterator;-><init>(JJ)V

    .line 1921
    iput-object p1, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    iput-wide p6, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->distance:D

    .line 1922
    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/random/RandomGenerator$JumpableGenerator;",
            ">;)V"
        }
    .end annotation

    .line 1944
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/random/RandomGenerator$JumpableGenerator;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->fence:J

    .line 1946
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_20

    .line 1947
    iput-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->index:J

    .line 1948
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    .line 1950
    .local v4, "r":Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;
    :cond_f
    iget-wide v5, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->distance:D

    invoke-interface {v4, v5, v6}, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;->copyAndJump(D)Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1951
    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    move-wide v0, v5

    cmp-long v5, v5, v2

    if-ltz v5, :cond_f

    .line 1953
    .end local v4    # "r":Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;
    :cond_20
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/random/RandomGenerator$JumpableGenerator;",
            ">;)Z"
        }
    .end annotation

    .line 1933
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/random/RandomGenerator$JumpableGenerator;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->fence:J

    .line 1935
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1d

    .line 1936
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    iget-wide v5, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->distance:D

    invoke-interface {v4, v5, v6}, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;->copyAndJump(D)Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1937
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->index:J

    .line 1938
    const/4 v4, 0x1

    return v4

    .line 1940
    :cond_1d
    const/4 v4, 0x0

    return v4
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/random/RandomGenerator$JumpableGenerator;",
            ">;"
        }
    .end annotation

    .line 1925
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->fence:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v8

    .local v8, "delta":J
    add-long v4, v2, v8

    .line 1926
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    .line 1927
    :cond_14
    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->index:J

    .line 1929
    new-instance v0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;

    iget-object v1, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    iget-wide v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->distance:D

    long-to-double v10, v8

    mul-double/2addr v6, v10

    invoke-interface {v1, v6, v7}, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;->copyAndJump(D)Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    move-result-object v1

    iget-wide v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;->distance:D

    invoke-direct/range {v0 .. v7}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;-><init>(Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;JJD)V

    return-object v0
.end method
