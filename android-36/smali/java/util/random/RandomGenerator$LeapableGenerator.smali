.class public interface abstract Ljava/util/random/RandomGenerator$LeapableGenerator;
.super Ljava/lang/Object;
.source "RandomGenerator.java"

# interfaces
.implements Ljava/util/random/RandomGenerator$JumpableGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/random/RandomGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LeapableGenerator"
.end annotation


# direct methods
.method public static whitelist test-api of(Ljava/lang/String;)Ljava/util/random/RandomGenerator$LeapableGenerator;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1297
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    const-class v0, Ljava/util/random/RandomGenerator$LeapableGenerator;

    invoke-static {p0, v0}, Ljava/util/random/RandomGeneratorFactory;->of(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/random/RandomGenerator;

    move-result-object v0

    check-cast v0, Ljava/util/random/RandomGenerator$LeapableGenerator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist test-api copy()Ljava/util/random/RandomGenerator$JumpableGenerator;
    .registers 2

    .line 1282
    invoke-interface {p0}, Ljava/util/random/RandomGenerator$LeapableGenerator;->copy()Ljava/util/random/RandomGenerator$LeapableGenerator;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api copy()Ljava/util/random/RandomGenerator$LeapableGenerator;
.end method

.method public whitelist test-api copyAndLeap()Ljava/util/random/RandomGenerator$JumpableGenerator;
    .registers 2

    .line 1375
    invoke-interface {p0}, Ljava/util/random/RandomGenerator$LeapableGenerator;->copy()Ljava/util/random/RandomGenerator$LeapableGenerator;

    move-result-object v0

    .line 1376
    .local v0, "result":Ljava/util/random/RandomGenerator$JumpableGenerator;
    invoke-interface {p0}, Ljava/util/random/RandomGenerator$LeapableGenerator;->leap()V

    .line 1377
    return-object v0
.end method

.method public abstract whitelist test-api leap()V
.end method

.method public abstract whitelist test-api leapDistance()D
.end method

.method public whitelist test-api leaps()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$JumpableGenerator;",
            ">;"
        }
    .end annotation

    .line 1343
    new-instance v0, Ljava/util/random/RandomGenerator$LeapableGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/util/random/RandomGenerator$LeapableGenerator$$ExternalSyntheticLambda0;-><init>(Ljava/util/random/RandomGenerator$LeapableGenerator;)V

    invoke-static {v0}, Ljava/util/stream/Stream;->generate(Ljava/util/function/Supplier;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    return-object v0
.end method

.method public whitelist test-api leaps(J)Ljava/util/stream/Stream;
    .registers 4
    .param p1, "streamSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$JumpableGenerator;",
            ">;"
        }
    .end annotation

    .line 1362
    invoke-interface {p0}, Ljava/util/random/RandomGenerator$LeapableGenerator;->leaps()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
