.class public interface abstract Ljava/util/function/IntUnaryOperator;
.super Ljava/lang/Object;
.source "IntUnaryOperator.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$-qFBMXVS2EdK-VxRa8rpRgFSK-M(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/function/IntUnaryOperator;->lambda$compose$0(Ljava/util/function/IntUnaryOperator;I)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$7EjZ_z9GtNbcLwFaqBbpyZwJ9UQ(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/function/IntUnaryOperator;->lambda$andThen$1(Ljava/util/function/IntUnaryOperator;I)I

    move-result p0

    return p0
.end method

.method public static whitelist test-api identity()Ljava/util/function/IntUnaryOperator;
    .registers 1

    .line 93
    new-instance v0, Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda2;-><init>()V

    return-object v0
.end method

.method private synthetic blacklist lambda$andThen$1(Ljava/util/function/IntUnaryOperator;I)I
    .registers 4
    .param p1, "after"    # Ljava/util/function/IntUnaryOperator;
    .param p2, "t"    # I

    .line 84
    invoke-interface {p0, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$compose$0(Ljava/util/function/IntUnaryOperator;I)I
    .registers 4
    .param p1, "before"    # Ljava/util/function/IntUnaryOperator;
    .param p2, "v"    # I

    .line 66
    invoke-interface {p1, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    return v0
.end method

.method public static synthetic blacklist lambda$identity$2(I)I
    .registers 1
    .param p0, "t"    # I

    .line 93
    return p0
.end method


# virtual methods
.method public whitelist test-api andThen(Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .registers 3
    .param p1, "after"    # Ljava/util/function/IntUnaryOperator;

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)V

    return-object v0
.end method

.method public abstract whitelist test-api applyAsInt(I)I
.end method

.method public whitelist test-api compose(Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .registers 3
    .param p1, "before"    # Ljava/util/function/IntUnaryOperator;

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)V

    return-object v0
.end method
