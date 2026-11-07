.class public interface abstract Ljava/util/function/Function;
.super Ljava/lang/Object;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$6uxaPoUTuGzP8UjzBnaOMmZaOoU(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/function/Function;->lambda$andThen$1(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$MYz1ngeLpzrR2aQSh3oYkXz0Mj4(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/function/Function;->lambda$compose$0(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist test-api identity()Ljava/util/function/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Function<",
            "TT;TT;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/function/Function$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/function/Function$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method private synthetic blacklist lambda$andThen$1(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "after"    # Ljava/util/function/Function;
    .param p2, "t"    # Ljava/lang/Object;

    .line 88
    .local p0, "this":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TR;>;"
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$compose$0(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "before"    # Ljava/util/function/Function;
    .param p2, "v"    # Ljava/lang/Object;

    .line 68
    .local p0, "this":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TR;>;"
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic blacklist lambda$identity$2(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .param p0, "t"    # Ljava/lang/Object;

    .line 98
    return-object p0
.end method


# virtual methods
.method public whitelist test-api andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TR;+TV;>;)",
            "Ljava/util/function/Function<",
            "TT;TV;>;"
        }
    .end annotation

    .line 87
    .local p0, "this":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TR;>;"
    .local p1, "after":Ljava/util/function/Function;, "Ljava/util/function/Function<-TR;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/util/function/Function$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ljava/util/function/Function$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public abstract whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation
.end method

.method public whitelist test-api compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TV;+TT;>;)",
            "Ljava/util/function/Function<",
            "TV;TR;>;"
        }
    .end annotation

    .line 67
    .local p0, "this":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TR;>;"
    .local p1, "before":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/function/Function$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ljava/util/function/Function$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    return-object v0
.end method
