.class public interface abstract Ljava/util/concurrent/CompletionStage;
.super Ljava/lang/Object;
.source "CompletionStage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$EpJ6PJ5mJLw93GmzMr-2g0fLwjU(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/CompletionStage;->lambda$exceptionallyAsync$1(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$IKFtQ7jcjSrGRdPuV-6vn-z93Ec(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/CompletionStage;->lambda$exceptionallyCompose$4(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$NsuNCmRt_rACZ28X-fMZp8n9L70(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/CompletionStage;->lambda$exceptionallyComposeAsync$8(Ljava/util/function/Function;Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$O9R11E5VVKmvI9U7gixOLNJWcJM(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/CompletionStage;->lambda$exceptionallyAsync$3(Ljava/util/function/Function;Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$oG1v_4pklbr0BhHEMfInOU4oSHw(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/CompletionStage;->lambda$exceptionallyComposeAsync$6(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist lambda$exceptionallyAsync$0(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 4
    .param p0, "fn"    # Ljava/util/function/Function;
    .param p1, "r1"    # Ljava/lang/Object;
    .param p2, "ex1"    # Ljava/lang/Throwable;

    .line 877
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$exceptionallyAsync$1(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .registers 5
    .param p1, "fn"    # Ljava/util/function/Function;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 875
    .local p0, "this":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TT;>;"
    if-nez p3, :cond_4

    .line 876
    move-object v0, p0

    goto :goto_d

    .line 877
    :cond_4
    new-instance v0, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Function;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/CompletionStage;->handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    .line 875
    :goto_d
    return-object v0
.end method

.method public static synthetic blacklist lambda$exceptionallyAsync$2(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 4
    .param p0, "fn"    # Ljava/util/function/Function;
    .param p1, "r1"    # Ljava/lang/Object;
    .param p2, "ex1"    # Ljava/lang/Throwable;

    .line 903
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$exceptionallyAsync$3(Ljava/util/function/Function;Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .registers 6
    .param p1, "fn"    # Ljava/util/function/Function;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "r"    # Ljava/lang/Object;
    .param p4, "ex"    # Ljava/lang/Throwable;

    .line 901
    .local p0, "this":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TT;>;"
    if-nez p4, :cond_4

    .line 902
    move-object v0, p0

    goto :goto_d

    .line 903
    :cond_4
    new-instance v0, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Function;)V

    invoke-interface {p0, v0, p2}, Ljava/util/concurrent/CompletionStage;->handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    .line 901
    :goto_d
    return-object v0
.end method

.method private synthetic blacklist lambda$exceptionallyCompose$4(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .registers 5
    .param p1, "fn"    # Ljava/util/function/Function;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 923
    .local p0, "this":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TT;>;"
    if-nez p3, :cond_4

    .line 924
    move-object v0, p0

    goto :goto_a

    .line 925
    :cond_4
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletionStage;

    .line 923
    :goto_a
    return-object v0
.end method

.method public static synthetic blacklist lambda$exceptionallyComposeAsync$5(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .registers 4
    .param p0, "fn"    # Ljava/util/function/Function;
    .param p1, "r1"    # Ljava/lang/Object;
    .param p2, "ex1"    # Ljava/lang/Throwable;

    .line 948
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletionStage;

    return-object v0
.end method

.method private synthetic blacklist lambda$exceptionallyComposeAsync$6(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .registers 6
    .param p1, "fn"    # Ljava/util/function/Function;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 946
    .local p0, "this":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TT;>;"
    if-nez p3, :cond_4

    .line 947
    move-object v0, p0

    goto :goto_15

    .line 949
    :cond_4
    new-instance v0, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;)V

    .line 948
    invoke-interface {p0, v0}, Ljava/util/concurrent/CompletionStage;->handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    .line 949
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/CompletionStage;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    .line 946
    :goto_15
    return-object v0
.end method

.method public static synthetic blacklist lambda$exceptionallyComposeAsync$7(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .registers 4
    .param p0, "fn"    # Ljava/util/function/Function;
    .param p1, "r1"    # Ljava/lang/Object;
    .param p2, "ex1"    # Ljava/lang/Throwable;

    .line 974
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletionStage;

    return-object v0
.end method

.method private synthetic blacklist lambda$exceptionallyComposeAsync$8(Ljava/util/function/Function;Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .registers 7
    .param p1, "fn"    # Ljava/util/function/Function;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "r"    # Ljava/lang/Object;
    .param p4, "ex"    # Ljava/lang/Throwable;

    .line 972
    .local p0, "this":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TT;>;"
    if-nez p4, :cond_4

    .line 973
    move-object v0, p0

    goto :goto_15

    .line 975
    :cond_4
    new-instance v0, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Function;)V

    .line 974
    invoke-interface {p0, v0, p2}, Ljava/util/concurrent/CompletionStage;->handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    .line 975
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/CompletionStage;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    .line 972
    :goto_15
    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Consumer<",
            "-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Function<",
            "-TT;TU;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Function<",
            "-TT;TU;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Function<",
            "-TT;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation
.end method

.method public whitelist test-api exceptionallyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 875
    .local p0, "this":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    new-instance v0, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/CompletionStage;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    .line 878
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/CompletionStage;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    .line 875
    return-object v0
.end method

.method public whitelist test-api exceptionallyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 901
    .local p0, "this":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    new-instance v0, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/CompletionStage;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    .line 904
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/CompletionStage;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    .line 901
    return-object v0
.end method

.method public whitelist test-api exceptionallyCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 923
    .local p0, "this":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+Ljava/util/concurrent/CompletionStage<TT;>;>;"
    new-instance v0, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/CompletionStage;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    .line 926
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/CompletionStage;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    .line 923
    return-object v0
.end method

.method public whitelist test-api exceptionallyComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 946
    .local p0, "this":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+Ljava/util/concurrent/CompletionStage<TT;>;>;"
    new-instance v0, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/CompletionStage;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    .line 950
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/CompletionStage;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    .line 946
    return-object v0
.end method

.method public whitelist test-api exceptionallyComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 972
    .local p0, "this":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+Ljava/util/concurrent/CompletionStage<TT;>;>;"
    new-instance v0, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/CompletionStage;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    .line 976
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/CompletionStage;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    .line 972
    return-object v0
.end method

.method public abstract whitelist test-api handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api toCompletableFuture()Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation
.end method
