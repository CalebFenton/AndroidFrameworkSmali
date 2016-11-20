.class final synthetic Ljava/util/function/DoubleUnaryOperator$-java_util_function_DoubleUnaryOperator_identity__LambdaImpl0;
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
    name = "-java_util_function_DoubleUnaryOperator_identity__LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public applyAsDouble(D)D
    .locals 3
    .param p1, "arg0"    # D

    #@0
    .prologue
    invoke-static {p1, p2}, Ljava/util/function/DoubleUnaryOperator;->-java_util_function_DoubleUnaryOperator_lambda$3(D)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method
