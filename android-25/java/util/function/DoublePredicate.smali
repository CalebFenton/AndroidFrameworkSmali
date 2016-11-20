.class public interface abstract Ljava/util/function/DoublePredicate;
.super Ljava/lang/Object;
.source "DoublePredicate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/function/DoublePredicate$-java_util_function_DoublePredicate_and_java_util_function_DoublePredicate_other_LambdaImpl0;,
        Ljava/util/function/DoublePredicate$-java_util_function_DoublePredicate_negate__LambdaImpl0;,
        Ljava/util/function/DoublePredicate$-java_util_function_DoublePredicate_or_java_util_function_DoublePredicate_other_LambdaImpl0;
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public synthetic -java_util_function_DoublePredicate_lambda$1(Ljava/util/function/DoublePredicate;D)Z
    .locals 2
    .param p1, "other"    # Ljava/util/function/DoublePredicate;
    .param p2, "value"    # D

    #@0
    .prologue
    .line 70
    invoke-interface {p0, p2, p3}, Ljava/util/function/DoublePredicate;->test(D)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-interface {p1, p2, p3}, Ljava/util/function/DoublePredicate;->test(D)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public synthetic -java_util_function_DoublePredicate_lambda$2(D)Z
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 81
    invoke-interface {p0, p1, p2}, Ljava/util/function/DoublePredicate;->test(D)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public synthetic -java_util_function_DoublePredicate_lambda$3(Ljava/util/function/DoublePredicate;D)Z
    .locals 2
    .param p1, "other"    # Ljava/util/function/DoublePredicate;
    .param p2, "value"    # D

    #@0
    .prologue
    .line 102
    invoke-interface {p0, p2, p3}, Ljava/util/function/DoublePredicate;->test(D)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-interface {p1, p2, p3}, Ljava/util/function/DoublePredicate;->test(D)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public and(Ljava/util/function/DoublePredicate;)Ljava/util/function/DoublePredicate;
    .locals 1
    .param p1, "other"    # Ljava/util/function/DoublePredicate;

    #@0
    .prologue
    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 70
    new-instance v0, Ljava/util/function/DoublePredicate$-java_util_function_DoublePredicate_and_java_util_function_DoublePredicate_other_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/function/DoublePredicate$-java_util_function_DoublePredicate_and_java_util_function_DoublePredicate_other_LambdaImpl0;-><init>(Ljava/util/function/DoublePredicate;Ljava/util/function/DoublePredicate;)V

    #@8
    return-object v0
.end method

.method public negate()Ljava/util/function/DoublePredicate;
    .locals 1

    #@0
    .prologue
    .line 81
    new-instance v0, Ljava/util/function/DoublePredicate$-java_util_function_DoublePredicate_negate__LambdaImpl0;

    #@2
    invoke-direct {v0, p0}, Ljava/util/function/DoublePredicate$-java_util_function_DoublePredicate_negate__LambdaImpl0;-><init>(Ljava/util/function/DoublePredicate;)V

    #@5
    return-object v0
.end method

.method public or(Ljava/util/function/DoublePredicate;)Ljava/util/function/DoublePredicate;
    .locals 1
    .param p1, "other"    # Ljava/util/function/DoublePredicate;

    #@0
    .prologue
    .line 101
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 102
    new-instance v0, Ljava/util/function/DoublePredicate$-java_util_function_DoublePredicate_or_java_util_function_DoublePredicate_other_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/function/DoublePredicate$-java_util_function_DoublePredicate_or_java_util_function_DoublePredicate_other_LambdaImpl0;-><init>(Ljava/util/function/DoublePredicate;Ljava/util/function/DoublePredicate;)V

    #@8
    return-object v0
.end method

.method public abstract test(D)Z
.end method
