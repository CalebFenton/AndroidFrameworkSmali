.class public interface abstract Ljava/util/function/BiFunction;
.super Ljava/lang/Object;
.source "BiFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/function/BiFunction$-java_util_function_BiFunction_andThen_java_util_function_Function_after_LambdaImpl0;
    }
.end annotation

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


# virtual methods
.method public synthetic -java_util_function_BiFunction_lambda$1(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "after"    # Ljava/util/function/Function;
    .param p2, "t"    # Ljava/lang/Object;
    .param p3, "u"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 70
    .local p0, "this":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TT;TU;TR;>;"
    invoke-interface {p0, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TR;+TV;>;)",
            "Ljava/util/function/BiFunction",
            "<TT;TU;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 69
    .local p0, "this":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TT;TU;TR;>;"
    .local p1, "after":Ljava/util/function/Function;, "Ljava/util/function/Function<-TR;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 70
    new-instance v0, Ljava/util/function/BiFunction$-java_util_function_BiFunction_andThen_java_util_function_Function_after_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/function/BiFunction$-java_util_function_BiFunction_andThen_java_util_function_Function_after_LambdaImpl0;-><init>(Ljava/util/function/BiFunction;Ljava/util/function/Function;)V

    #@8
    return-object v0
.end method

.method public abstract apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)TR;"
        }
    .end annotation
.end method
