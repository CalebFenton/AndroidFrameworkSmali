.class public interface abstract Ljava/util/function/LongUnaryOperator;
.super Ljava/lang/Object;
.source "LongUnaryOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_andThen_java_util_function_LongUnaryOperator_after_LambdaImpl0;,
        Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_compose_java_util_function_LongUnaryOperator_before_LambdaImpl0;,
        Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_identity__LambdaImpl0;
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic -java_util_function_LongUnaryOperator_lambda$3(J)J
    .locals 0
    .param p0, "t"    # J

    #@0
    .prologue
    .line 93
    return-wide p0
.end method

.method public static identity()Ljava/util/function/LongUnaryOperator;
    .locals 1

    #@0
    .prologue
    .line 93
    new-instance v0, Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_identity__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_identity__LambdaImpl0;-><init>()V

    #@5
    return-object v0
.end method


# virtual methods
.method public synthetic -java_util_function_LongUnaryOperator_lambda$1(Ljava/util/function/LongUnaryOperator;J)J
    .locals 2
    .param p1, "before"    # Ljava/util/function/LongUnaryOperator;
    .param p2, "v"    # J

    #@0
    .prologue
    .line 66
    invoke-interface {p1, p2, p3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    #@3
    move-result-wide v0

    #@4
    invoke-interface {p0, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public synthetic -java_util_function_LongUnaryOperator_lambda$2(Ljava/util/function/LongUnaryOperator;J)J
    .locals 2
    .param p1, "after"    # Ljava/util/function/LongUnaryOperator;
    .param p2, "t"    # J

    #@0
    .prologue
    .line 84
    invoke-interface {p0, p2, p3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    #@3
    move-result-wide v0

    #@4
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public andThen(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .locals 1
    .param p1, "after"    # Ljava/util/function/LongUnaryOperator;

    #@0
    .prologue
    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 84
    new-instance v0, Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_andThen_java_util_function_LongUnaryOperator_after_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_andThen_java_util_function_LongUnaryOperator_after_LambdaImpl0;-><init>(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;)V

    #@8
    return-object v0
.end method

.method public abstract applyAsLong(J)J
.end method

.method public compose(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .locals 1
    .param p1, "before"    # Ljava/util/function/LongUnaryOperator;

    #@0
    .prologue
    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 66
    new-instance v0, Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_compose_java_util_function_LongUnaryOperator_before_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_compose_java_util_function_LongUnaryOperator_before_LambdaImpl0;-><init>(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;)V

    #@8
    return-object v0
.end method
