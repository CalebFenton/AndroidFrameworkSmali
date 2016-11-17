.class final synthetic Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_identity__LambdaImpl0;
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
    name = "-java_util_function_LongUnaryOperator_identity__LambdaImpl0"
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
.method public applyAsLong(J)J
    .locals 3
    .param p1, "arg0"    # J

    #@0
    .prologue
    invoke-static {p1, p2}, Ljava/util/function/LongUnaryOperator;->-java_util_function_LongUnaryOperator_lambda$3(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method
