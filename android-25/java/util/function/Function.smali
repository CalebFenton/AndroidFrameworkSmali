.class public interface abstract Ljava/util/function/Function;
.super Ljava/lang/Object;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/function/Function$-java_util_function_Function_andThen_java_util_function_Function_after_LambdaImpl0;,
        Ljava/util/function/Function$-java_util_function_Function_compose_java_util_function_Function_before_LambdaImpl0;,
        Ljava/util/function/Function$-java_util_function_Function_identity__LambdaImpl0;
    }
.end annotation

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
.method public static synthetic -java_util_function_Function_lambda$3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "t"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 98
    return-object p0
.end method

.method public static identity()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Function",
            "<TT;TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 98
    new-instance v0, Ljava/util/function/Function$-java_util_function_Function_identity__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/function/Function$-java_util_function_Function_identity__LambdaImpl0;-><init>()V

    #@5
    return-object v0
.end method


# virtual methods
.method public synthetic -java_util_function_Function_lambda$1(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "before"    # Ljava/util/function/Function;
    .param p2, "v"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 68
    .local p0, "this":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TR;>;"
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p0, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public synthetic -java_util_function_Function_lambda$2(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "after"    # Ljava/util/function/Function;
    .param p2, "t"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 88
    .local p0, "this":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TR;>;"
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TR;+TV;>;)",
            "Ljava/util/function/Function",
            "<TT;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 87
    .local p0, "this":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TR;>;"
    .local p1, "after":Ljava/util/function/Function;, "Ljava/util/function/Function<-TR;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 88
    new-instance v0, Ljava/util/function/Function$-java_util_function_Function_andThen_java_util_function_Function_after_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/function/Function$-java_util_function_Function_andThen_java_util_function_Function_after_LambdaImpl0;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    #@8
    return-object v0
.end method

.method public abstract apply(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation
.end method

.method public compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TV;+TT;>;)",
            "Ljava/util/function/Function",
            "<TV;TR;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 67
    .local p0, "this":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TR;>;"
    .local p1, "before":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 68
    new-instance v0, Ljava/util/function/Function$-java_util_function_Function_compose_java_util_function_Function_before_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/function/Function$-java_util_function_Function_compose_java_util_function_Function_before_LambdaImpl0;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    #@8
    return-object v0
.end method
