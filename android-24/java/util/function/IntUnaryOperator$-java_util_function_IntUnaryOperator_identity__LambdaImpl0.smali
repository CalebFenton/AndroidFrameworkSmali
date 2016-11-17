.class final synthetic Ljava/util/function/IntUnaryOperator$-java_util_function_IntUnaryOperator_identity__LambdaImpl0;
.super Ljava/lang/Object;
.source "IntUnaryOperator.java"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/IntUnaryOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_IntUnaryOperator_identity__LambdaImpl0"
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
.method public applyAsInt(I)I
    .locals 1
    .param p1, "arg0"    # I

    #@0
    .prologue
    invoke-static {p1}, Ljava/util/function/IntUnaryOperator;->-java_util_function_IntUnaryOperator_lambda$3(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method
