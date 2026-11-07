.class public interface abstract Ljava/util/function/Predicate;
.super Ljava/lang/Object;
.source "Predicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$5t44llxMa89E83y7-wwPDlGiDQo(Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/function/Predicate;->lambda$and$0(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$7-MXpAfva0gyIyM0i-tu46bntDs(Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/function/Predicate;->lambda$or$2(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Co9d014x49fK3ObcE_cQWYd-iOc(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/function/Predicate;->lambda$negate$1(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static whitelist test-api isEqual(Ljava/lang/Object;)Ljava/util/function/Predicate;
    .registers 2
    .param p0, "targetRef"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 115
    if-nez p0, :cond_8

    .line 116
    new-instance v0, Ljava/util/function/Predicate$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/util/function/Predicate$$ExternalSyntheticLambda3;-><init>()V

    goto :goto_d

    .line 117
    :cond_8
    new-instance v0, Ljava/util/function/Predicate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Ljava/util/function/Predicate$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;)V

    .line 115
    :goto_d
    return-object v0
.end method

.method private synthetic blacklist lambda$and$0(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/util/function/Predicate;
    .param p2, "t"    # Ljava/lang/Object;

    .line 69
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static synthetic blacklist lambda$isEqual$3(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "targetRef"    # Ljava/lang/Object;
    .param p1, "object"    # Ljava/lang/Object;

    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$negate$1(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "t"    # Ljava/lang/Object;

    .line 80
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$or$2(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/util/function/Predicate;
    .param p2, "t"    # Ljava/lang/Object;

    .line 101
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

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

.method public static whitelist test-api not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 137
    .local p0, "target":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-interface {p0}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .local p1, "other":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/function/Predicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava/util/function/Predicate$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public whitelist test-api negate()Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 80
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    new-instance v0, Ljava/util/function/Predicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ljava/util/function/Predicate$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public whitelist test-api or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .local p1, "other":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/util/function/Predicate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ljava/util/function/Predicate$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public abstract whitelist test-api test(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
