.class final synthetic Ljava/util/function/DoubleUnaryOperator$-java_util_function_DoubleUnaryOperator_compose_java_util_function_DoubleUnaryOperator_before_LambdaImpl0;
.super Ljava/lang/Object;
.source "DoubleUnaryOperator.java"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/DoubleUnaryOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_DoubleUnaryOperator_compose_java_util_function_DoubleUnaryOperator_before_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$before:Ljava/util/function/DoubleUnaryOperator;

.field private synthetic val$this:Ljava/util/function/DoubleUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/function/DoubleUnaryOperator$-java_util_function_DoubleUnaryOperator_compose_java_util_function_DoubleUnaryOperator_before_LambdaImpl0;->val$this:Ljava/util/function/DoubleUnaryOperator;

    #@5
    iput-object p2, p0, Ljava/util/function/DoubleUnaryOperator$-java_util_function_DoubleUnaryOperator_compose_java_util_function_DoubleUnaryOperator_before_LambdaImpl0;->val$before:Ljava/util/function/DoubleUnaryOperator;

    #@7
    return-void
.end method


# virtual methods
.method public applyAsDouble(D)D
    .locals 3
    .param p1, "arg0"    # D

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/function/DoubleUnaryOperator$-java_util_function_DoubleUnaryOperator_compose_java_util_function_DoubleUnaryOperator_before_LambdaImpl0;->val$this:Ljava/util/function/DoubleUnaryOperator;

    #@2
    iget-object v1, p0, Ljava/util/function/DoubleUnaryOperator$-java_util_function_DoubleUnaryOperator_compose_java_util_function_DoubleUnaryOperator_before_LambdaImpl0;->val$before:Ljava/util/function/DoubleUnaryOperator;

    #@4
    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/DoubleUnaryOperator;->-java_util_function_DoubleUnaryOperator_lambda$1(Ljava/util/function/DoubleUnaryOperator;D)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method
