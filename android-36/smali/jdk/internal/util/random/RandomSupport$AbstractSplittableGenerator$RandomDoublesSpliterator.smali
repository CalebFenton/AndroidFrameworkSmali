.class Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;
.super Ljdk/internal/util/random/RandomSupport$RandomSpliterator;
.source "RandomSupport.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RandomDoublesSpliterator"
.end annotation


# instance fields
.field final blacklist bound:D

.field final blacklist generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

.field final blacklist origin:D


# direct methods
.method constructor blacklist <init>(Ljava/util/random/RandomGenerator$SplittableGenerator;JJDD)V
    .registers 10
    .param p1, "generatingGenerator"    # Ljava/util/random/RandomGenerator$SplittableGenerator;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # D
    .param p8, "bound"    # D

    .line 2208
    invoke-direct {p0, p2, p3, p4, p5}, Ljdk/internal/util/random/RandomSupport$RandomSpliterator;-><init>(JJ)V

    .line 2209
    iput-object p1, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    .line 2210
    iput-wide p6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->origin:D

    iput-wide p8, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->bound:D

    .line 2211
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

    .line 2202
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 13
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 2232
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2233
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->fence:J

    .line 2234
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_22

    .line 2235
    iput-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->index:J

    .line 2236
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    .line 2237
    .local v4, "r":Ljava/util/random/RandomGenerator;
    iget-wide v5, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->origin:D

    .local v5, "o":D
    iget-wide v7, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->bound:D

    .line 2239
    .local v7, "b":D
    :cond_13
    invoke-static {v4, v5, v6, v7, v8}, Ljdk/internal/util/random/RandomSupport;->boundedNextDouble(Ljava/util/random/RandomGenerator;DD)D

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 2240
    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    move-wide v0, v9

    cmp-long v9, v9, v2

    if-ltz v9, :cond_13

    .line 2242
    .end local v4    # "r":Ljava/util/random/RandomGenerator;
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

    .line 2202
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 11
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 2221
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->fence:J

    .line 2223
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1f

    .line 2224
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    iget-wide v5, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->origin:D

    iget-wide v7, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->bound:D

    invoke-static {v4, v5, v6, v7, v8}, Ljdk/internal/util/random/RandomSupport;->boundedNextDouble(Ljava/util/random/RandomGenerator;DD)D

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 2225
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->index:J

    .line 2226
    const/4 v4, 0x1

    return v4

    .line 2228
    :cond_1f
    const/4 v4, 0x0

    return v4
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 11

    .line 2214
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v4, 0x1

    ushr-long v4, v0, v4

    .line 2215
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 2216
    :cond_e
    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->index:J

    .line 2217
    new-instance v0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;

    iget-object v1, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    invoke-interface {v1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->split()Ljava/util/random/RandomGenerator$SplittableGenerator;

    move-result-object v1

    iget-wide v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->origin:D

    iget-wide v8, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->bound:D

    invoke-direct/range {v0 .. v9}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;-><init>(Ljava/util/random/RandomGenerator$SplittableGenerator;JJDD)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 2202
    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 2202
    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
