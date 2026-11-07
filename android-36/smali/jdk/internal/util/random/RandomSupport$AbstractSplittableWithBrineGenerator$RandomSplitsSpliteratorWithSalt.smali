.class Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;
.super Ljdk/internal/util/random/RandomSupport$RandomSpliterator;
.source "RandomSupport.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RandomSplitsSpliteratorWithSalt"
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
.field final blacklist constructingGenerator:Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;

.field final blacklist generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

.field blacklist salt:J


# direct methods
.method constructor blacklist <init>(Ljava/util/random/RandomGenerator$SplittableGenerator;JJLjdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;J)V
    .registers 11
    .param p1, "generatingGenerator"    # Ljava/util/random/RandomGenerator$SplittableGenerator;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "constructingGenerator"    # Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;
    .param p7, "salt"    # J

    .line 2458
    invoke-direct {p0, p2, p3, p4, p5}, Ljdk/internal/util/random/RandomSupport$RandomSpliterator;-><init>(JJ)V

    .line 2459
    iput-object p1, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    .line 2460
    iput-object p6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->constructingGenerator:Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;

    .line 2461
    :goto_7
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-eqz v0, :cond_18

    neg-long v0, p7

    and-long/2addr v0, p7

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gtz v0, :cond_18

    .line 2462
    const/4 v0, 0x4

    shl-long/2addr p7, v0

    goto :goto_7

    .line 2464
    :cond_18
    iput-wide p7, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->salt:J

    .line 2465
    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;)V"
        }
    .end annotation

    .line 2493
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/random/RandomGenerator$SplittableGenerator;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2494
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->fence:J

    .line 2495
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_31

    .line 2496
    iput-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->index:J

    .line 2497
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->constructingGenerator:Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;

    .line 2498
    .local v4, "c":Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;
    iget-object v5, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    .line 2500
    .local v5, "r":Ljava/util/random/RandomGenerator$SplittableGenerator;
    :cond_11
    iget-wide v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->salt:J

    or-long/2addr v6, v0

    invoke-virtual {v4, v5, v6, v7}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;->split(Ljava/util/random/RandomGenerator$SplittableGenerator;J)Ljava/util/random/RandomGenerator$SplittableGenerator;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2501
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 2502
    iget-wide v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->salt:J

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2d

    iget-wide v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->salt:J

    const/4 v8, 0x4

    shl-long/2addr v6, v8

    iput-wide v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->salt:J

    .line 2503
    :cond_2d
    cmp-long v6, v0, v2

    if-ltz v6, :cond_11

    .line 2505
    .end local v4    # "c":Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;
    .end local v5    # "r":Ljava/util/random/RandomGenerator$SplittableGenerator;
    :cond_31
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;)Z"
        }
    .end annotation

    .line 2480
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/random/RandomGenerator$SplittableGenerator;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2481
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->fence:J

    .line 2482
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_2f

    .line 2483
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->constructingGenerator:Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;

    iget-object v5, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    iget-wide v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->salt:J

    or-long/2addr v6, v0

    invoke-virtual {v4, v5, v6, v7}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;->split(Ljava/util/random/RandomGenerator$SplittableGenerator;J)Ljava/util/random/RandomGenerator$SplittableGenerator;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2484
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 2485
    iput-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->index:J

    .line 2486
    iget-wide v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->salt:J

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2d

    iget-wide v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->salt:J

    const/4 v6, 0x4

    shl-long/2addr v4, v6

    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->salt:J

    .line 2487
    :cond_2d
    const/4 v4, 0x1

    return v4

    .line 2489
    :cond_2f
    const/4 v4, 0x0

    return v4
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;"
        }
    .end annotation

    .line 2468
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->fence:J

    add-long/2addr v0, v2

    const/4 v4, 0x1

    ushr-long v4, v0, v4

    .line 2469
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 2470
    :cond_e
    new-instance v0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;

    iget-object v1, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    .line 2471
    invoke-interface {v1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->split()Ljava/util/random/RandomGenerator$SplittableGenerator;

    move-result-object v1

    iget-object v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->constructingGenerator:Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;

    iget-wide v7, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->salt:J

    invoke-direct/range {v0 .. v8}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;-><init>(Ljava/util/random/RandomGenerator$SplittableGenerator;JJLjdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;J)V

    .line 2472
    .local v0, "result":Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;
    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->index:J

    .line 2473
    :goto_1f
    iget-wide v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->salt:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_3c

    iget-wide v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->salt:J

    iget-wide v8, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->salt:J

    neg-long v8, v8

    and-long/2addr v6, v8

    iget-wide v8, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->index:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v1

    if-gtz v1, :cond_3c

    .line 2474
    iget-wide v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->salt:J

    const/4 v1, 0x4

    shl-long/2addr v6, v1

    iput-wide v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;->salt:J

    goto :goto_1f

    .line 2476
    :cond_3c
    return-object v0
.end method
