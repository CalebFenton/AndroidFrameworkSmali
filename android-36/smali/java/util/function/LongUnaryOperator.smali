.class public interface abstract Ljava/util/function/LongUnaryOperator;
.super Ljava/lang/Object;
.source "LongUnaryOperator.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$Vt7EVUVxvgNuBEswj0ccG3XPIaE(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;J)J
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/function/LongUnaryOperator;->lambda$andThen$1(Ljava/util/function/LongUnaryOperator;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic blacklist $r8$lambda$wBzivoQzjj4T0O4WWXi1ZjYcGiI(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;J)J
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/function/LongUnaryOperator;->lambda$compose$0(Ljava/util/function/LongUnaryOperator;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static whitelist test-api identity()Ljava/util/function/LongUnaryOperator;
    .registers 1

    .line 93
    new-instance v0, Ljava/util/function/LongUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/function/LongUnaryOperator$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method private synthetic blacklist lambda$andThen$1(Ljava/util/function/LongUnaryOperator;J)J
    .registers 6
    .param p1, "after"    # Ljava/util/function/LongUnaryOperator;
    .param p2, "t"    # J

    .line 84
    invoke-interface {p0, p2, p3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private synthetic blacklist lambda$compose$0(Ljava/util/function/LongUnaryOperator;J)J
    .registers 6
    .param p1, "before"    # Ljava/util/function/LongUnaryOperator;
    .param p2, "v"    # J

    .line 66
    invoke-interface {p1, p2, p3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic blacklist lambda$identity$2(J)J
    .registers 2
    .param p0, "t"    # J

    .line 93
    return-wide p0
.end method


# virtual methods
.method public whitelist test-api andThen(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .registers 3
    .param p1, "after"    # Ljava/util/function/LongUnaryOperator;

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/util/function/LongUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ljava/util/function/LongUnaryOperator$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;)V

    return-object v0
.end method

.method public abstract whitelist test-api applyAsLong(J)J
.end method

.method public whitelist test-api compose(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .registers 3
    .param p1, "before"    # Ljava/util/function/LongUnaryOperator;

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/function/LongUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ljava/util/function/LongUnaryOperator$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;)V

    return-object v0
.end method
