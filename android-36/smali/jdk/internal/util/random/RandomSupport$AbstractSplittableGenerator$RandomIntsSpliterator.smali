.class Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;
.super Ljdk/internal/util/random/RandomSupport$RandomSpliterator;
.source "RandomSupport.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RandomIntsSpliterator"
.end annotation


# instance fields
.field final blacklist bound:I

.field final blacklist generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

.field final blacklist origin:I


# direct methods
.method constructor blacklist <init>(Ljava/util/random/RandomGenerator$SplittableGenerator;JJII)V
    .registers 8
    .param p1, "generatingGenerator"    # Ljava/util/random/RandomGenerator$SplittableGenerator;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # I
    .param p7, "bound"    # I

    .line 2116
    invoke-direct {p0, p2, p3, p4, p5}, Ljdk/internal/util/random/RandomSupport$RandomSpliterator;-><init>(JJ)V

    .line 2117
    iput-object p1, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    .line 2118
    iput p6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->origin:I

    iput p7, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->bound:I

    .line 2119
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

    .line 2110
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 11
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 2140
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2141
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->fence:J

    .line 2142
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_22

    .line 2143
    iput-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->index:J

    .line 2144
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    .line 2145
    .local v4, "r":Ljava/util/random/RandomGenerator;
    iget v5, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->origin:I

    .local v5, "o":I
    iget v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->bound:I

    .line 2147
    .local v6, "b":I
    :cond_13
    invoke-static {v4, v5, v6}, Ljdk/internal/util/random/RandomSupport;->boundedNextInt(Ljava/util/random/RandomGenerator;II)I

    move-result v7

    invoke-interface {p1, v7}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 2148
    const-wide/16 v7, 0x1

    add-long/2addr v7, v0

    move-wide v0, v7

    cmp-long v7, v7, v2

    if-ltz v7, :cond_13

    .line 2150
    .end local v4    # "r":Ljava/util/random/RandomGenerator;
    .end local v5    # "o":I
    .end local v6    # "b":I
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

    .line 2110
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 9
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 2129
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->fence:J

    .line 2131
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1f

    .line 2132
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    iget v5, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->origin:I

    iget v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->bound:I

    invoke-static {v4, v5, v6}, Ljdk/internal/util/random/RandomSupport;->boundedNextInt(Ljava/util/random/RandomGenerator;II)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 2133
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->index:J

    .line 2134
    const/4 v4, 0x1

    return v4

    .line 2136
    :cond_1f
    const/4 v4, 0x0

    return v4
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 9

    .line 2122
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v4, 0x1

    ushr-long v4, v0, v4

    .line 2123
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 2124
    :cond_e
    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->index:J

    .line 2125
    new-instance v0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;

    iget-object v1, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator$SplittableGenerator;

    invoke-interface {v1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->split()Ljava/util/random/RandomGenerator$SplittableGenerator;

    move-result-object v1

    iget v6, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->origin:I

    iget v7, p0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->bound:I

    invoke-direct/range {v0 .. v7}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;-><init>(Ljava/util/random/RandomGenerator$SplittableGenerator;JJII)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 2110
    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 2110
    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
