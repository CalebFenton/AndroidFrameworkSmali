.class public abstract Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;
.super Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;
.source "RandomSupport.java"

# interfaces
.implements Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/util/random/RandomSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractArbitrarilyJumpableGenerator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomJumpsSpliterator;,
        Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;,
        Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomArbitraryJumpsSpliterator;,
        Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomDoublesSpliterator;,
        Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLongsSpliterator;,
        Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomIntsSpliterator;
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 1631
    invoke-direct {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;-><init>()V

    .line 1632
    return-void
.end method

.method private static blacklist stream(Ljava/util/Spliterator;)Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1662
    .local p0, "srng":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist test-api copy()Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;
    .registers 2

    .line 1611
    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->copy()Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api copy()Ljava/util/random/RandomGenerator$JumpableGenerator;
    .registers 2

    .line 1611
    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->copy()Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api copy()Ljava/util/random/RandomGenerator$LeapableGenerator;
    .registers 2

    .line 1611
    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->copy()Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist copy()Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;
.end method

.method public whitelist test-api jumps()Ljava/util/stream/Stream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator;",
            ">;"
        }
    .end annotation

    .line 1667
    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->jumpDistance()D

    move-result-wide v5

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->makeJumpsSpliterator(JJD)Ljava/util/Spliterator;

    move-result-object v1

    invoke-static {v1}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->stream(Ljava/util/Spliterator;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api jumps(D)Ljava/util/stream/Stream;
    .registers 10
    .param p1, "distance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;",
            ">;"
        }
    .end annotation

    .line 1678
    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v5, p1

    .end local p1    # "distance":D
    .local v5, "distance":D
    invoke-virtual/range {v0 .. v6}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->makeArbitraryJumpsSpliterator(JJD)Ljava/util/Spliterator;

    move-result-object p1

    invoke-static {p1}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->stream(Ljava/util/Spliterator;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api jumps(J)Ljava/util/stream/Stream;
    .registers 10
    .param p1, "streamSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator;",
            ">;"
        }
    .end annotation

    .line 1672
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkStreamSize(J)V

    .line 1673
    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->jumpDistance()D

    move-result-wide v5

    move-object v0, p0

    move-wide v3, p1

    .end local p1    # "streamSize":J
    .local v3, "streamSize":J
    invoke-virtual/range {v0 .. v6}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->makeJumpsSpliterator(JJD)Ljava/util/Spliterator;

    move-result-object p1

    invoke-static {p1}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->stream(Ljava/util/Spliterator;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api jumps(JD)Ljava/util/stream/Stream;
    .registers 12
    .param p1, "streamSize"    # J
    .param p3, "distance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JD)",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;",
            ">;"
        }
    .end annotation

    .line 1683
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkStreamSize(J)V

    .line 1684
    const-wide/16 v1, 0x0

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    .end local p1    # "streamSize":J
    .end local p3    # "distance":D
    .local v3, "streamSize":J
    .local v5, "distance":D
    invoke-virtual/range {v0 .. v6}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->makeArbitraryJumpsSpliterator(JJD)Ljava/util/Spliterator;

    move-result-object p1

    invoke-static {p1}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->stream(Ljava/util/Spliterator;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api leap()V
    .registers 3

    .line 1689
    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->leapDistance()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->jump(D)V

    .line 1690
    return-void
.end method

.method public whitelist test-api leaps()Ljava/util/stream/Stream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$JumpableGenerator;",
            ">;"
        }
    .end annotation

    .line 1696
    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->leapDistance()D

    move-result-wide v5

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->makeLeapsSpliterator(JJD)Ljava/util/Spliterator;

    move-result-object v1

    invoke-static {v1}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->stream(Ljava/util/Spliterator;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api leaps(J)Ljava/util/stream/Stream;
    .registers 10
    .param p1, "streamSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$JumpableGenerator;",
            ">;"
        }
    .end annotation

    .line 1701
    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->leapDistance()D

    move-result-wide v5

    move-object v0, p0

    move-wide v3, p1

    .end local p1    # "streamSize":J
    .local v3, "streamSize":J
    invoke-virtual/range {v0 .. v6}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->makeLeapsSpliterator(JJD)Ljava/util/Spliterator;

    move-result-object p1

    invoke-static {p1}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;->stream(Ljava/util/Spliterator;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method blacklist makeArbitraryJumpsSpliterator(JJD)Ljava/util/Spliterator;
    .registers 15
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "distance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJD)",
            "Ljava/util/Spliterator<",
            "Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;",
            ">;"
        }
    .end annotation

    .line 1645
    new-instance v0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomArbitraryJumpsSpliterator;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "index":J
    .end local p3    # "fence":J
    .end local p5    # "distance":D
    .local v2, "index":J
    .local v4, "fence":J
    .local v6, "distance":D
    invoke-direct/range {v0 .. v7}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomArbitraryJumpsSpliterator;-><init>(Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;JJD)V

    return-object v0
.end method

.method blacklist makeJumpsSpliterator(JJD)Ljava/util/Spliterator;
    .registers 15
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "distance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJD)",
            "Ljava/util/Spliterator<",
            "Ljava/util/random/RandomGenerator;",
            ">;"
        }
    .end annotation

    .line 1637
    new-instance v0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomJumpsSpliterator;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "index":J
    .end local p3    # "fence":J
    .end local p5    # "distance":D
    .local v2, "index":J
    .local v4, "fence":J
    .local v6, "distance":D
    invoke-direct/range {v0 .. v7}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomJumpsSpliterator;-><init>(Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;JJD)V

    return-object v0
.end method

.method blacklist makeLeapsSpliterator(JJD)Ljava/util/Spliterator;
    .registers 15
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "distance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJD)",
            "Ljava/util/Spliterator<",
            "Ljava/util/random/RandomGenerator$JumpableGenerator;",
            ">;"
        }
    .end annotation

    .line 1641
    new-instance v0, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "index":J
    .end local p3    # "fence":J
    .end local p5    # "distance":D
    .local v2, "index":J
    .local v4, "fence":J
    .local v6, "distance":D
    invoke-direct/range {v0 .. v7}, Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator$RandomLeapsSpliterator;-><init>(Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;JJD)V

    return-object v0
.end method
