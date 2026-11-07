.class public interface abstract Ljava/util/function/BiPredicate;
.super Ljava/lang/Object;
.source "BiPredicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$ImozxIv6xlnE6Mz2p38sikqXw9A(Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/function/BiPredicate;->lambda$negate$1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$rveWsEVpKaNOI9COYDP_Kyg1lXI(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/function/BiPredicate;->lambda$and$0(Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$vckAorFyEPrq6_5kd0TfZZKFUko(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/function/BiPredicate;->lambda$or$2(Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$and$0(Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/util/function/BiPredicate;
    .param p2, "t"    # Ljava/lang/Object;
    .param p3, "u"    # Ljava/lang/Object;

    .line 73
    .local p0, "this":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<TT;TU;>;"
    invoke-interface {p0, p2, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1, p2, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private synthetic blacklist lambda$negate$1(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "t"    # Ljava/lang/Object;
    .param p2, "u"    # Ljava/lang/Object;

    .line 84
    .local p0, "this":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<TT;TU;>;"
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$or$2(Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/util/function/BiPredicate;
    .param p2, "t"    # Ljava/lang/Object;
    .param p3, "u"    # Ljava/lang/Object;

    .line 105
    .local p0, "this":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<TT;TU;>;"
    invoke-interface {p0, p2, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p1, p2, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

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
.method public whitelist test-api and(Ljava/util/function/BiPredicate;)Ljava/util/function/BiPredicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "-TT;-TU;>;)",
            "Ljava/util/function/BiPredicate<",
            "TT;TU;>;"
        }
    .end annotation

    .line 72
    .local p0, "this":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<TT;TU;>;"
    .local p1, "other":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<-TT;-TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/util/function/BiPredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ljava/util/function/BiPredicate$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;)V

    return-object v0
.end method

.method public whitelist test-api negate()Ljava/util/function/BiPredicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiPredicate<",
            "TT;TU;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<TT;TU;>;"
    new-instance v0, Ljava/util/function/BiPredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/util/function/BiPredicate$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiPredicate;)V

    return-object v0
.end method

.method public whitelist test-api or(Ljava/util/function/BiPredicate;)Ljava/util/function/BiPredicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "-TT;-TU;>;)",
            "Ljava/util/function/BiPredicate<",
            "TT;TU;>;"
        }
    .end annotation

    .line 104
    .local p0, "this":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<TT;TU;>;"
    .local p1, "other":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<-TT;-TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/util/function/BiPredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ljava/util/function/BiPredicate$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;)V

    return-object v0
.end method

.method public abstract whitelist test-api test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)Z"
        }
    .end annotation
.end method
