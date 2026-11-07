.class public interface abstract Ljava/util/function/BiFunction;
.super Ljava/lang/Object;
.source "BiFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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
.method public static synthetic blacklist $r8$lambda$jpe6lCtItPFG5YvADvcUCtRg944(Ljava/util/function/BiFunction;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/function/BiFunction;->lambda$andThen$0(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$andThen$0(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "after"    # Ljava/util/function/Function;
    .param p2, "t"    # Ljava/lang/Object;
    .param p3, "u"    # Ljava/lang/Object;

    .line 70
    .local p0, "this":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TT;TU;TR;>;"
    invoke-interface {p0, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TR;+TV;>;)",
            "Ljava/util/function/BiFunction<",
            "TT;TU;TV;>;"
        }
    .end annotation

    .line 69
    .local p0, "this":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TT;TU;TR;>;"
    .local p1, "after":Ljava/util/function/Function;, "Ljava/util/function/Function<-TR;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/util/function/BiFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava/util/function/BiFunction$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiFunction;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public abstract whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)TR;"
        }
    .end annotation
.end method
