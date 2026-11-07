.class public interface abstract Ljava/util/function/LongPredicate;
.super Ljava/lang/Object;
.source "LongPredicate.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$09xL4JTw5PXz_Z9ggRgDkhJTQEM(Ljava/util/function/LongPredicate;Ljava/util/function/LongPredicate;J)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/function/LongPredicate;->lambda$and$0(Ljava/util/function/LongPredicate;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$IZEYo1chbYONLQrF_OqduKnE4LU(Ljava/util/function/LongPredicate;J)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/function/LongPredicate;->lambda$negate$1(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$efrtU1IWMsYM0DNu5xVdQJfce8E(Ljava/util/function/LongPredicate;Ljava/util/function/LongPredicate;J)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/function/LongPredicate;->lambda$or$2(Ljava/util/function/LongPredicate;J)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$and$0(Ljava/util/function/LongPredicate;J)Z
    .registers 5
    .param p1, "other"    # Ljava/util/function/LongPredicate;
    .param p2, "value"    # J

    .line 70
    invoke-interface {p0, p2, p3}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1, p2, p3}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private synthetic blacklist lambda$negate$1(J)Z
    .registers 4
    .param p1, "value"    # J

    .line 81
    invoke-interface {p0, p1, p2}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$or$2(Ljava/util/function/LongPredicate;J)Z
    .registers 5
    .param p1, "other"    # Ljava/util/function/LongPredicate;
    .param p2, "value"    # J

    .line 102
    invoke-interface {p0, p2, p3}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p1, p2, p3}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method


# virtual methods
.method public whitelist test-api and(Ljava/util/function/LongPredicate;)Ljava/util/function/LongPredicate;
    .registers 3
    .param p1, "other"    # Ljava/util/function/LongPredicate;

    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/util/function/LongPredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ljava/util/function/LongPredicate$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/LongPredicate;Ljava/util/function/LongPredicate;)V

    return-object v0
.end method

.method public whitelist test-api negate()Ljava/util/function/LongPredicate;
    .registers 2

    .line 81
    new-instance v0, Ljava/util/function/LongPredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Ljava/util/function/LongPredicate$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/LongPredicate;)V

    return-object v0
.end method

.method public whitelist test-api or(Ljava/util/function/LongPredicate;)Ljava/util/function/LongPredicate;
    .registers 3
    .param p1, "other"    # Ljava/util/function/LongPredicate;

    .line 101
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/util/function/LongPredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava/util/function/LongPredicate$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/LongPredicate;Ljava/util/function/LongPredicate;)V

    return-object v0
.end method

.method public abstract whitelist test-api test(J)Z
.end method
