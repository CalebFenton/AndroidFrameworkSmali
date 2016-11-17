.class final synthetic Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_compose_java_util_function_LongUnaryOperator_before_LambdaImpl0;
.super Ljava/lang/Object;
.source "LongUnaryOperator.java"

# interfaces
.implements Ljava/util/function/LongUnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/LongUnaryOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_LongUnaryOperator_compose_java_util_function_LongUnaryOperator_before_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$before:Ljava/util/function/LongUnaryOperator;

.field private synthetic val$this:Ljava/util/function/LongUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_compose_java_util_function_LongUnaryOperator_before_LambdaImpl0;->val$this:Ljava/util/function/LongUnaryOperator;

    #@5
    iput-object p2, p0, Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_compose_java_util_function_LongUnaryOperator_before_LambdaImpl0;->val$before:Ljava/util/function/LongUnaryOperator;

    #@7
    return-void
.end method


# virtual methods
.method public applyAsLong(J)J
    .locals 3
    .param p1, "arg0"    # J

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_compose_java_util_function_LongUnaryOperator_before_LambdaImpl0;->val$this:Ljava/util/function/LongUnaryOperator;

    #@2
    iget-object v1, p0, Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_compose_java_util_function_LongUnaryOperator_before_LambdaImpl0;->val$before:Ljava/util/function/LongUnaryOperator;

    #@4
    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/LongUnaryOperator;->-java_util_function_LongUnaryOperator_lambda$1(Ljava/util/function/LongUnaryOperator;J)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method
