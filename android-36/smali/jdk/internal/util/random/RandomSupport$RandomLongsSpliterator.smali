.class public Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;
.super Ljdk/internal/util/random/RandomSupport$RandomSpliterator;
.source "RandomSupport.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/util/random/RandomSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RandomLongsSpliterator"
.end annotation


# instance fields
.field final blacklist bound:J

.field final blacklist generatingGenerator:Ljava/util/random/RandomGenerator;

.field final blacklist origin:J


# direct methods
.method public constructor blacklist <init>(Ljava/util/random/RandomGenerator;JJJJ)V
    .registers 10
    .param p1, "generatingGenerator"    # Ljava/util/random/RandomGenerator;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # J
    .param p8, "bound"    # J

    .line 1028
    invoke-direct {p0, p2, p3, p4, p5}, Ljdk/internal/util/random/RandomSupport$RandomSpliterator;-><init>(JJ)V

    .line 1029
    iput-object p1, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator;

    .line 1030
    iput-wide p6, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->origin:J

    iput-wide p8, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->bound:J

    .line 1031
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

    .line 1011
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 13
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 1053
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->fence:J

    .line 1055
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_22

    .line 1056
    iput-wide v2, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->index:J

    .line 1057
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator;

    .line 1058
    .local v4, "r":Ljava/util/random/RandomGenerator;
    iget-wide v5, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->origin:J

    .local v5, "o":J
    iget-wide v7, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->bound:J

    .line 1060
    .local v7, "b":J
    :cond_13
    invoke-static {v4, v5, v6, v7, v8}, Ljdk/internal/util/random/RandomSupport;->boundedNextLong(Ljava/util/random/RandomGenerator;JJ)J

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1061
    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    move-wide v0, v9

    cmp-long v9, v9, v2

    if-ltz v9, :cond_13

    .line 1063
    .end local v4    # "r":Ljava/util/random/RandomGenerator;
    .end local v5    # "o":J
    .end local v7    # "b":J
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

    .line 1011
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 11
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 1042
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->fence:J

    .line 1044
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1f

    .line 1045
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator;

    iget-wide v5, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->origin:J

    iget-wide v7, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->bound:J

    invoke-static {v4, v5, v6, v7, v8}, Ljdk/internal/util/random/RandomSupport;->boundedNextLong(Ljava/util/random/RandomGenerator;JJ)J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1046
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->index:J

    .line 1047
    const/4 v4, 0x1

    return v4

    .line 1049
    :cond_1f
    const/4 v4, 0x0

    return v4
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfLong;
    .registers 11

    .line 1034
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v4, 0x1

    ushr-long v4, v0, v4

    .line 1035
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 1036
    :cond_e
    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->index:J

    .line 1038
    new-instance v0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;

    iget-object v1, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator;

    iget-wide v6, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->origin:J

    iget-wide v8, p0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->bound:J

    invoke-direct/range {v0 .. v9}, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;-><init>(Ljava/util/random/RandomGenerator;JJJJ)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1011
    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1011
    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
