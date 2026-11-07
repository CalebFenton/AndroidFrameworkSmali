.class public interface abstract Ljava/util/random/RandomGenerator$SplittableGenerator;
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
    name = "SplittableGenerator"
.end annotation


# direct methods
.method public static synthetic blacklist lambda$rngs$0(Ljava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/random/RandomGenerator;
    .registers 1
    .param p0, "x"    # Ljava/util/random/RandomGenerator$SplittableGenerator;

    .line 1047
    return-object p0
.end method

.method public static synthetic blacklist lambda$rngs$1(Ljava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/random/RandomGenerator;
    .registers 1
    .param p0, "x"    # Ljava/util/random/RandomGenerator$SplittableGenerator;

    .line 1066
    return-object p0
.end method

.method public static whitelist test-api of(Ljava/lang/String;)Ljava/util/random/RandomGenerator$SplittableGenerator;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 927
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const-class v0, Ljava/util/random/RandomGenerator$SplittableGenerator;

    invoke-static {p0, v0}, Ljava/util/random/RandomGeneratorFactory;->of(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/random/RandomGenerator;

    move-result-object v0

    check-cast v0, Ljava/util/random/RandomGenerator$SplittableGenerator;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api rngs()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator;",
            ">;"
        }
    .end annotation

    .line 1047
    invoke-interface {p0}, Ljava/util/random/RandomGenerator$SplittableGenerator;->splits()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/util/random/RandomGenerator$SplittableGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/util/random/RandomGenerator$SplittableGenerator$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api rngs(J)Ljava/util/stream/Stream;
    .registers 5
    .param p1, "streamSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator;",
            ">;"
        }
    .end annotation

    .line 1066
    invoke-interface {p0, p1, p2}, Ljava/util/random/RandomGenerator$SplittableGenerator;->splits(J)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/util/random/RandomGenerator$SplittableGenerator$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/util/random/RandomGenerator$SplittableGenerator$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api split()Ljava/util/random/RandomGenerator$SplittableGenerator;
.end method

.method public abstract whitelist test-api split(Ljava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/random/RandomGenerator$SplittableGenerator;
.end method

.method public whitelist test-api splits()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;"
        }
    .end annotation

    .line 979
    invoke-interface {p0, p0}, Ljava/util/random/RandomGenerator$SplittableGenerator;->splits(Ljava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api splits(J)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api splits(JLjava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api splits(Ljava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;"
        }
    .end annotation
.end method
