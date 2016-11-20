.class public interface abstract Ljava/util/function/BinaryOperator;
.super Ljava/lang/Object;
.source "BinaryOperator.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_maxBy_java_util_Comparator_comparator_LambdaImpl0;,
        Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_minBy_java_util_Comparator_comparator_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction",
        "<TT;TT;TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic -java_util_function_BinaryOperator_lambda$1(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "comparator"    # Ljava/util/Comparator;
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 59
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    if-gtz v0, :cond_0

    #@6
    .end local p1    # "a":Ljava/lang/Object;
    :goto_0
    return-object p1

    #@7
    .restart local p1    # "a":Ljava/lang/Object;
    :cond_0
    move-object p1, p2

    #@8
    goto :goto_0
.end method

.method public static synthetic -java_util_function_BinaryOperator_lambda$2(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "comparator"    # Ljava/util/Comparator;
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 74
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    if-ltz v0, :cond_0

    #@6
    .end local p1    # "a":Ljava/lang/Object;
    :goto_0
    return-object p1

    #@7
    .restart local p1    # "a":Ljava/lang/Object;
    :cond_0
    move-object p1, p2

    #@8
    goto :goto_0
.end method

.method public static maxBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 73
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 74
    new-instance v0, Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_maxBy_java_util_Comparator_comparator_LambdaImpl0;

    #@5
    invoke-direct {v0, p0}, Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_maxBy_java_util_Comparator_comparator_LambdaImpl0;-><init>(Ljava/util/Comparator;)V

    #@8
    return-object v0
.end method

.method public static minBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 58
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 59
    new-instance v0, Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_minBy_java_util_Comparator_comparator_LambdaImpl0;

    #@5
    invoke-direct {v0, p0}, Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_minBy_java_util_Comparator_comparator_LambdaImpl0;-><init>(Ljava/util/Comparator;)V

    #@8
    return-object v0
.end method
