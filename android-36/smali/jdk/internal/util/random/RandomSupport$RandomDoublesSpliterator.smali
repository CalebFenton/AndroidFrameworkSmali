.class public Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;
.super Ljdk/internal/util/random/RandomSupport$RandomSpliterator;
.source "RandomSupport.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/util/random/RandomSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RandomDoublesSpliterator"
.end annotation


# instance fields
.field final blacklist bound:D

.field final blacklist generatingGenerator:Ljava/util/random/RandomGenerator;

.field final blacklist origin:D


# direct methods
.method public constructor blacklist <init>(Ljava/util/random/RandomGenerator;JJDD)V
    .registers 10
    .param p1, "generatingGenerator"    # Ljava/util/random/RandomGenerator;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # D
    .param p8, "bound"    # D

    .line 1086
    invoke-direct {p0, p2, p3, p4, p5}, Ljdk/internal/util/random/RandomSupport$RandomSpliterator;-><init>(JJ)V

    .line 1087
    iput-object p1, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator;

    .line 1088
    iput-wide p6, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->origin:D

    iput-wide p8, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->bound:D

    .line 1089
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

    .line 1069
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 13
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 1111
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->fence:J

    .line 1113
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_22

    .line 1114
    iput-wide v2, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->index:J

    .line 1115
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator;

    .line 1116
    .local v4, "r":Ljava/util/random/RandomGenerator;
    iget-wide v5, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->origin:D

    .local v5, "o":D
    iget-wide v7, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->bound:D

    .line 1118
    .local v7, "b":D
    :cond_13
    invoke-static {v4, v5, v6, v7, v8}, Ljdk/internal/util/random/RandomSupport;->boundedNextDouble(Ljava/util/random/RandomGenerator;DD)D

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1119
    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    move-wide v0, v9

    cmp-long v9, v9, v2

    if-ltz v9, :cond_13

    .line 1121
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

    .line 1069
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 11
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 1100
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->fence:J

    .line 1102
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1f

    .line 1103
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator;

    iget-wide v5, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->origin:D

    iget-wide v7, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->bound:D

    invoke-static {v4, v5, v6, v7, v8}, Ljdk/internal/util/random/RandomSupport;->boundedNextDouble(Ljava/util/random/RandomGenerator;DD)D

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1104
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->index:J

    .line 1105
    const/4 v4, 0x1

    return v4

    .line 1107
    :cond_1f
    const/4 v4, 0x0

    return v4
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 11

    .line 1092
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v4, 0x1

    ushr-long v4, v0, v4

    .line 1093
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 1094
    :cond_e
    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->index:J

    .line 1096
    new-instance v0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;

    iget-object v1, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator;

    iget-wide v6, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->origin:D

    iget-wide v8, p0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->bound:D

    invoke-direct/range {v0 .. v9}, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;-><init>(Ljava/util/random/RandomGenerator;JJDD)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1069
    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1069
    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
