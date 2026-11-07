.class public interface abstract Ljava/util/function/DoublePredicate;
.super Ljava/lang/Object;
.source "DoublePredicate.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$ie42k4bWf07GclJ0ZySIOnGSlgc(Ljava/util/function/DoublePredicate;Ljava/util/function/DoublePredicate;D)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/function/DoublePredicate;->lambda$and$0(Ljava/util/function/DoublePredicate;D)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ruw_V3GYVZBogpzMTIIR-Jstwv0(Ljava/util/function/DoublePredicate;D)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/function/DoublePredicate;->lambda$negate$1(D)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$rxdpyRVLUPFbLPUPaiAntJZK1ks(Ljava/util/function/DoublePredicate;Ljava/util/function/DoublePredicate;D)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/function/DoublePredicate;->lambda$or$2(Ljava/util/function/DoublePredicate;D)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$and$0(Ljava/util/function/DoublePredicate;D)Z
    .registers 5
    .param p1, "other"    # Ljava/util/function/DoublePredicate;
    .param p2, "value"    # D

    .line 70
    invoke-interface {p0, p2, p3}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1, p2, p3}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private synthetic blacklist lambda$negate$1(D)Z
    .registers 4
    .param p1, "value"    # D

    .line 81
    invoke-interface {p0, p1, p2}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$or$2(Ljava/util/function/DoublePredicate;D)Z
    .registers 5
    .param p1, "other"    # Ljava/util/function/DoublePredicate;
    .param p2, "value"    # D

    .line 102
    invoke-interface {p0, p2, p3}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p1, p2, p3}, Ljava/util/function/DoublePredicate;->test(D)Z

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
.method public whitelist test-api and(Ljava/util/function/DoublePredicate;)Ljava/util/function/DoublePredicate;
    .registers 3
    .param p1, "other"    # Ljava/util/function/DoublePredicate;

    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/util/function/DoublePredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ljava/util/function/DoublePredicate$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/DoublePredicate;Ljava/util/function/DoublePredicate;)V

    return-object v0
.end method

.method public whitelist test-api negate()Ljava/util/function/DoublePredicate;
    .registers 2

    .line 81
    new-instance v0, Ljava/util/function/DoublePredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/util/function/DoublePredicate$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/DoublePredicate;)V

    return-object v0
.end method

.method public whitelist test-api or(Ljava/util/function/DoublePredicate;)Ljava/util/function/DoublePredicate;
    .registers 3
    .param p1, "other"    # Ljava/util/function/DoublePredicate;

    .line 101
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/util/function/DoublePredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ljava/util/function/DoublePredicate$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/DoublePredicate;Ljava/util/function/DoublePredicate;)V

    return-object v0
.end method

.method public abstract whitelist test-api test(D)Z
.end method
