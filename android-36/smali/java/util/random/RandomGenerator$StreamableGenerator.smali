.class public interface abstract Ljava/util/random/RandomGenerator$StreamableGenerator;
.super Ljava/lang/Object;
.source "RandomGenerator.java"

# interfaces
.implements Ljava/util/random/RandomGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/random/RandomGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StreamableGenerator"
.end annotation


# direct methods
.method public static whitelist test-api of(Ljava/lang/String;)Ljava/util/random/RandomGenerator$StreamableGenerator;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 844
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    const-class v0, Ljava/util/random/RandomGenerator$StreamableGenerator;

    invoke-static {p0, v0}, Ljava/util/random/RandomGeneratorFactory;->of(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/random/RandomGenerator;

    move-result-object v0

    check-cast v0, Ljava/util/random/RandomGenerator$StreamableGenerator;

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api rngs()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator;",
            ">;"
        }
    .end annotation
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

    .line 882
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkStreamSize(J)V

    .line 884
    invoke-interface {p0}, Ljava/util/random/RandomGenerator$StreamableGenerator;->rngs()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
