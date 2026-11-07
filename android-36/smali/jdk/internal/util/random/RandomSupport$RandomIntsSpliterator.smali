.class public Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;
.super Ljdk/internal/util/random/RandomSupport$RandomSpliterator;
.source "RandomSupport.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/util/random/RandomSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RandomIntsSpliterator"
.end annotation


# instance fields
.field final blacklist bound:I

.field final blacklist generatingGenerator:Ljava/util/random/RandomGenerator;

.field final blacklist origin:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/random/RandomGenerator;JJII)V
    .registers 8
    .param p1, "generatingGenerator"    # Ljava/util/random/RandomGenerator;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # I
    .param p7, "bound"    # I

    .line 970
    invoke-direct {p0, p2, p3, p4, p5}, Ljdk/internal/util/random/RandomSupport$RandomSpliterator;-><init>(JJ)V

    .line 971
    iput-object p1, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator;

    .line 972
    iput p6, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->origin:I

    iput p7, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->bound:I

    .line 973
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

    .line 953
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 11
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 995
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->fence:J

    .line 997
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_22

    .line 998
    iput-wide v2, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->index:J

    .line 999
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator;

    .line 1000
    .local v4, "r":Ljava/util/random/RandomGenerator;
    iget v5, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->origin:I

    .local v5, "o":I
    iget v6, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->bound:I

    .line 1002
    .local v6, "b":I
    :cond_13
    invoke-static {v4, v5, v6}, Ljdk/internal/util/random/RandomSupport;->boundedNextInt(Ljava/util/random/RandomGenerator;II)I

    move-result v7

    invoke-interface {p1, v7}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1003
    const-wide/16 v7, 0x1

    add-long/2addr v7, v0

    move-wide v0, v7

    cmp-long v7, v7, v2

    if-ltz v7, :cond_13

    .line 1005
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

    .line 953
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 9
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 984
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->fence:J

    .line 986
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1f

    .line 987
    iget-object v4, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator;

    iget v5, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->origin:I

    iget v6, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->bound:I

    invoke-static {v4, v5, v6}, Ljdk/internal/util/random/RandomSupport;->boundedNextInt(Ljava/util/random/RandomGenerator;II)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 988
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->index:J

    .line 989
    const/4 v4, 0x1

    return v4

    .line 991
    :cond_1f
    const/4 v4, 0x0

    return v4
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 9

    .line 976
    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v4, 0x1

    ushr-long v4, v0, v4

    .line 977
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 978
    :cond_e
    iput-wide v4, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->index:J

    .line 980
    new-instance v0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;

    iget-object v1, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->generatingGenerator:Ljava/util/random/RandomGenerator;

    iget v6, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->origin:I

    iget v7, p0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->bound:I

    invoke-direct/range {v0 .. v7}, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;-><init>(Ljava/util/random/RandomGenerator;JJII)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 953
    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 953
    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
