.class public interface abstract Ljava/util/random/RandomGenerator$JumpableGenerator;
.super Ljava/lang/Object;
.source "RandomGenerator.java"

# interfaces
.implements Ljava/util/random/RandomGenerator$StreamableGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/random/RandomGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JumpableGenerator"
.end annotation


# direct methods
.method public static whitelist test-api of(Ljava/lang/String;)Ljava/util/random/RandomGenerator$JumpableGenerator;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1123
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    const-class v0, Ljava/util/random/RandomGenerator$JumpableGenerator;

    invoke-static {p0, v0}, Ljava/util/random/RandomGeneratorFactory;->of(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/random/RandomGenerator;

    move-result-object v0

    check-cast v0, Ljava/util/random/RandomGenerator$JumpableGenerator;

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api copy()Ljava/util/random/RandomGenerator$JumpableGenerator;
.end method

.method public whitelist test-api copyAndJump()Ljava/util/random/RandomGenerator;
    .registers 2

    .line 1233
    invoke-interface {p0}, Ljava/util/random/RandomGenerator$JumpableGenerator;->copy()Ljava/util/random/RandomGenerator$JumpableGenerator;

    move-result-object v0

    .line 1234
    .local v0, "result":Ljava/util/random/RandomGenerator;
    invoke-interface {p0}, Ljava/util/random/RandomGenerator$JumpableGenerator;->jump()V

    .line 1236
    return-object v0
.end method

.method public abstract whitelist test-api jump()V
.end method

.method public abstract whitelist test-api jumpDistance()D
.end method

.method public whitelist test-api jumps()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator;",
            ">;"
        }
    .end annotation

    .line 1169
    new-instance v0, Ljava/util/random/RandomGenerator$JumpableGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/util/random/RandomGenerator$JumpableGenerator$$ExternalSyntheticLambda0;-><init>(Ljava/util/random/RandomGenerator$JumpableGenerator;)V

    invoke-static {v0}, Ljava/util/stream/Stream;->generate(Ljava/util/function/Supplier;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    return-object v0
.end method

.method public whitelist test-api jumps(J)Ljava/util/stream/Stream;
    .registers 4
    .param p1, "streamSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator;",
            ">;"
        }
    .end annotation

    .line 1188
    invoke-interface {p0}, Ljava/util/random/RandomGenerator$JumpableGenerator;->jumps()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api rngs()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator;",
            ">;"
        }
    .end annotation

    .line 1202
    invoke-interface {p0}, Ljava/util/random/RandomGenerator$JumpableGenerator;->jumps()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api rngs(J)Ljava/util/stream/Stream;
    .registers 4
    .param p1, "streamSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator;",
            ">;"
        }
    .end annotation

    .line 1220
    invoke-interface {p0, p1, p2}, Ljava/util/random/RandomGenerator$JumpableGenerator;->jumps(J)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
