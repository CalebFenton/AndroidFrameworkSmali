.class public interface abstract Ljava/util/function/IntUnaryOperator;
.super Ljava/lang/Object;
.source "IntUnaryOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/function/IntUnaryOperator$-java_util_function_IntUnaryOperator_andThen_java_util_function_IntUnaryOperator_after_LambdaImpl0;,
        Ljava/util/function/IntUnaryOperator$-java_util_function_IntUnaryOperator_compose_java_util_function_IntUnaryOperator_before_LambdaImpl0;,
        Ljava/util/function/IntUnaryOperator$-java_util_function_IntUnaryOperator_identity__LambdaImpl0;
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic -java_util_function_IntUnaryOperator_lambda$3(I)I
    .locals 0
    .param p0, "t"    # I

    #@0
    .prologue
    .line 93
    return p0
.end method

.method public static identity()Ljava/util/function/IntUnaryOperator;
    .locals 1

    #@0
    .prologue
    .line 93
    new-instance v0, Ljava/util/function/IntUnaryOperator$-java_util_function_IntUnaryOperator_identity__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/function/IntUnaryOperator$-java_util_function_IntUnaryOperator_identity__LambdaImpl0;-><init>()V

    #@5
    return-object v0
.end method


# virtual methods
.method public synthetic -java_util_function_IntUnaryOperator_lambda$1(Ljava/util/function/IntUnaryOperator;I)I
    .locals 1
    .param p1, "before"    # Ljava/util/function/IntUnaryOperator;
    .param p2, "v"    # I

    #@0
    .prologue
    .line 66
    invoke-interface {p1, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    #@3
    move-result v0

    #@4
    invoke-interface {p0, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public synthetic -java_util_function_IntUnaryOperator_lambda$2(Ljava/util/function/IntUnaryOperator;I)I
    .locals 1
    .param p1, "after"    # Ljava/util/function/IntUnaryOperator;
    .param p2, "t"    # I

    #@0
    .prologue
    .line 84
    invoke-interface {p0, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    #@3
    move-result v0

    #@4
    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public andThen(Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .locals 1
    .param p1, "after"    # Ljava/util/function/IntUnaryOperator;

    #@0
    .prologue
    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 84
    new-instance v0, Ljava/util/function/IntUnaryOperator$-java_util_function_IntUnaryOperator_andThen_java_util_function_IntUnaryOperator_after_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/function/IntUnaryOperator$-java_util_function_IntUnaryOperator_andThen_java_util_function_IntUnaryOperator_after_LambdaImpl0;-><init>(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)V

    #@8
    return-object v0
.end method

.method public abstract applyAsInt(I)I
.end method

.method public compose(Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .locals 1
    .param p1, "before"    # Ljava/util/function/IntUnaryOperator;

    #@0
    .prologue
    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 66
    new-instance v0, Ljava/util/function/IntUnaryOperator$-java_util_function_IntUnaryOperator_compose_java_util_function_IntUnaryOperator_before_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/function/IntUnaryOperator$-java_util_function_IntUnaryOperator_compose_java_util_function_IntUnaryOperator_before_LambdaImpl0;-><init>(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)V

    #@8
    return-object v0
.end method
