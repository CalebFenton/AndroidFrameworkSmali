.class public interface abstract Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;
.super Ljava/lang/Object;
.source "RandomGenerator.java"

# interfaces
.implements Ljava/util/random/RandomGenerator$LeapableGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/random/RandomGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ArbitrarilyJumpableGenerator"
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$72_v8qsFyOoAuHx7pbBfIk5q_p4(Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;D)Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;->lambda$jumps$0(D)Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$jumps$0(D)Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;
    .registers 4
    .param p1, "distance"    # D

    .line 1506
    invoke-interface {p0, p1, p2}, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;->copyAndJump(D)Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/String;)Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1436
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    const-class v0, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    invoke-static {p0, v0}, Ljava/util/random/RandomGeneratorFactory;->of(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/random/RandomGenerator;

    move-result-object v0

    check-cast v0, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api copy()Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;
.end method

.method public bridge synthetic whitelist test-api copy()Ljava/util/random/RandomGenerator$JumpableGenerator;
    .registers 2

    .line 1421
    invoke-interface {p0}, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;->copy()Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api copy()Ljava/util/random/RandomGenerator$LeapableGenerator;
    .registers 2

    .line 1421
    invoke-interface {p0}, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;->copy()Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api copyAndJump(D)Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;
    .registers 4
    .param p1, "distance"    # D

    .line 1558
    invoke-interface {p0}, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;->copy()Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    move-result-object v0

    .line 1559
    .local v0, "result":Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;
    invoke-interface {p0, p1, p2}, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;->jump(D)V

    .line 1561
    return-object v0
.end method

.method public whitelist test-api jump()V
    .registers 3

    .line 1484
    invoke-interface {p0}, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;->jumpDistance()D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;->jump(D)V

    return-void
.end method

.method public abstract whitelist test-api jump(D)V
.end method

.method public abstract whitelist test-api jumpPowerOfTwo(I)V
.end method

.method public whitelist test-api jumps(D)Ljava/util/stream/Stream;
    .registers 4
    .param p1, "distance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;",
            ">;"
        }
    .end annotation

    .line 1506
    new-instance v0, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator$$ExternalSyntheticLambda0;-><init>(Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;D)V

    invoke-static {v0}, Ljava/util/stream/Stream;->generate(Ljava/util/function/Supplier;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    return-object v0
.end method

.method public whitelist test-api jumps(JD)Ljava/util/stream/Stream;
    .registers 6
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

    .line 1530
    invoke-interface {p0, p3, p4}, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;->jumps(D)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api leap()V
    .registers 3

    .line 1540
    invoke-interface {p0}, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;->leapDistance()D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;->jump(D)V

    return-void
.end method
