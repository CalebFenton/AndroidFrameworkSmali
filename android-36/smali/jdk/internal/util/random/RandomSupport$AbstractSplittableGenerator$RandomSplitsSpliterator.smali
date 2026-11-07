.class Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;
.super Ljdk/internal/util/random/RandomSupport$RandomSpliterator;
.source "RandomSupport.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RandomSplitsSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljdk/internal/util/random/RandomSupport$RandomSpliterator;",
        "Ljava/util/Spliterator<",
        "Ljava/util/random/RandomGenerator$SplittableGenerator;",
        ">;"
    }
.end annotation


# instance fields
.field final blacklist constructingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

.field final blacklist generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;


# direct methods
.method constructor blacklist <init>(Ljava/util/random/RandomGenerator$SplittableGenerator;JJLjava/util/random/RandomGenerator$SplittableGenerator;)V
    .registers 7
    .param p1, "generatingGenerator"    # Ljava/util/random/RandomGenerator$SplittableGenerator;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "constructingGenerator"    # Ljava/util/random/RandomGenerator$SplittableGenerator;

    .line 2258
    invoke-direct {p0, p2, p3, p4, p5}, Ljdk/internal/util/random/RandomSupport$RandomSpliterator;-><init>(JJ)V

    .line 2259
    iput-object p1, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    .line 2260
    iput-object p6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;->constructingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    .line 2261
    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;)V"
        }
    .end annotation

    .line 2282
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/random/RandomGenerator$SplittableGenerator;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2283
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;->fence:J

    .line 2284
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_20

    .line 2285
    iput-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;->index:J

    .line 2286
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;->constructingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    .line 2287
    .local v4, "c":Ljava/util/random/RandomGenerator$SplittableGenerator;
    iget-object v5, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    .line 2289
    .local v5, "r":Ljava/util/random/RandomGenerator$SplittableGenerator;
    :cond_11
    invoke-interface {v4, v5}, Ljava/util/random/RandomGenerator$SplittableGenerator;->split(Ljava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/random/RandomGenerator$SplittableGenerator;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2290
    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    move-wide v0, v6

    cmp-long v6, v6, v2

    if-ltz v6, :cond_11

    .line 2292
    .end local v4    # "c":Ljava/util/random/RandomGenerator$SplittableGenerator;
    .end local v5    # "r":Ljava/util/random/RandomGenerator$SplittableGenerator;
    :cond_20
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;)Z"
        }
    .end annotation

    .line 2271
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/random/RandomGenerator$SplittableGenerator;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2272
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;->fence:J

    .line 2273
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1d

    .line 2274
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;->constructingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    iget-object v5, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    invoke-interface {v4, v5}, Ljava/util/random/RandomGenerator$SplittableGenerator;->split(Ljava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/random/RandomGenerator$SplittableGenerator;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2275
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;->index:J

    .line 2276
    const/4 v4, 0x1

    return v4

    .line 2278
    :cond_1d
    const/4 v4, 0x0

    return v4
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;"
        }
    .end annotation

    .line 2264
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v4, 0x1

    ushr-long v4, v0, v4

    .line 2265
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 2266
    :cond_e
    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;->index:J

    .line 2267
    new-instance v0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;

    iget-object v1, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    invoke-interface {v1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->split()Ljava/util/random/RandomGenerator$SplittableGenerator;

    move-result-object v1

    iget-object v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;->constructingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    invoke-direct/range {v0 .. v6}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;-><init>(Ljava/util/random/RandomGenerator$SplittableGenerator;JJLjava/util/random/RandomGenerator$SplittableGenerator;)V

    return-object v0
.end method
