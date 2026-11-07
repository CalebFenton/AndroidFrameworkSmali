.class public interface abstract Ljava/util/function/DoubleUnaryOperator;
.super Ljava/lang/Object;
.source "DoubleUnaryOperator.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$DoEPUUdYjl6SsIZbTCDHXy-C4f4(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;D)D
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/function/DoubleUnaryOperator;->lambda$compose$0(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic blacklist $r8$lambda$Pe8EKXL8iJflQjvnMknOPr7zB4A(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;D)D
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/function/DoubleUnaryOperator;->lambda$andThen$1(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static whitelist test-api identity()Ljava/util/function/DoubleUnaryOperator;
    .registers 1

    .line 93
    new-instance v0, Ljava/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method private synthetic blacklist lambda$andThen$1(Ljava/util/function/DoubleUnaryOperator;D)D
    .registers 6
    .param p1, "after"    # Ljava/util/function/DoubleUnaryOperator;
    .param p2, "t"    # D

    .line 84
    invoke-interface {p0, p2, p3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private synthetic blacklist lambda$compose$0(Ljava/util/function/DoubleUnaryOperator;D)D
    .registers 6
    .param p1, "before"    # Ljava/util/function/DoubleUnaryOperator;
    .param p2, "v"    # D

    .line 66
    invoke-interface {p1, p2, p3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic blacklist lambda$identity$2(D)D
    .registers 2
    .param p0, "t"    # D

    .line 93
    return-wide p0
.end method


# virtual methods
.method public whitelist test-api andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;
    .registers 3
    .param p1, "after"    # Ljava/util/function/DoubleUnaryOperator;

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ljava/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method

.method public abstract whitelist test-api applyAsDouble(D)D
.end method

.method public whitelist test-api compose(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;
    .registers 3
    .param p1, "before"    # Ljava/util/function/DoubleUnaryOperator;

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method
