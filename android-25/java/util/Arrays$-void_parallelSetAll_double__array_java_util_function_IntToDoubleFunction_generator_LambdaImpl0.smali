.class final synthetic Ljava/util/Arrays$-void_parallelSetAll_double__array_java_util_function_IntToDoubleFunction_generator_LambdaImpl0;
.super Ljava/lang/Object;
.source "Arrays.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Arrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_parallelSetAll_double__array_java_util_function_IntToDoubleFunction_generator_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$array:[D

.field private synthetic val$generator:Ljava/util/function/IntToDoubleFunction;


# direct methods
.method public synthetic constructor <init>([DLjava/util/function/IntToDoubleFunction;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/Arrays$-void_parallelSetAll_double__array_java_util_function_IntToDoubleFunction_generator_LambdaImpl0;->val$array:[D

    #@5
    iput-object p2, p0, Ljava/util/Arrays$-void_parallelSetAll_double__array_java_util_function_IntToDoubleFunction_generator_LambdaImpl0;->val$generator:Ljava/util/function/IntToDoubleFunction;

    #@7
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "arg0"    # I

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/Arrays$-void_parallelSetAll_double__array_java_util_function_IntToDoubleFunction_generator_LambdaImpl0;->val$array:[D

    #@2
    iget-object v1, p0, Ljava/util/Arrays$-void_parallelSetAll_double__array_java_util_function_IntToDoubleFunction_generator_LambdaImpl0;->val$generator:Ljava/util/function/IntToDoubleFunction;

    #@4
    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->-java_util_Arrays_lambda$4([DLjava/util/function/IntToDoubleFunction;I)V

    #@7
    return-void
.end method
