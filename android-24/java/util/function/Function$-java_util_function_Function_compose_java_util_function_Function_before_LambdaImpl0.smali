.class final synthetic Ljava/util/function/Function$-java_util_function_Function_compose_java_util_function_Function_before_LambdaImpl0;
.super Ljava/lang/Object;
.source "Function.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_Function_compose_java_util_function_Function_before_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$before:Ljava/util/function/Function;

.field private synthetic val$this:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/function/Function$-java_util_function_Function_compose_java_util_function_Function_before_LambdaImpl0;->val$this:Ljava/util/function/Function;

    #@5
    iput-object p2, p0, Ljava/util/function/Function$-java_util_function_Function_compose_java_util_function_Function_before_LambdaImpl0;->val$before:Ljava/util/function/Function;

    #@7
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/function/Function$-java_util_function_Function_compose_java_util_function_Function_before_LambdaImpl0;->val$this:Ljava/util/function/Function;

    #@2
    iget-object v1, p0, Ljava/util/function/Function$-java_util_function_Function_compose_java_util_function_Function_before_LambdaImpl0;->val$before:Ljava/util/function/Function;

    #@4
    invoke-interface {v0, v1, p1}, Ljava/util/function/Function;->-java_util_function_Function_lambda$1(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
