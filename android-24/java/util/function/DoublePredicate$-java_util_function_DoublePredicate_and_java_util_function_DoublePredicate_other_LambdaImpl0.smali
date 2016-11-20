.class final synthetic Ljava/util/function/DoublePredicate$-java_util_function_DoublePredicate_and_java_util_function_DoublePredicate_other_LambdaImpl0;
.super Ljava/lang/Object;
.source "DoublePredicate.java"

# interfaces
.implements Ljava/util/function/DoublePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/DoublePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_DoublePredicate_and_java_util_function_DoublePredicate_other_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$other:Ljava/util/function/DoublePredicate;

.field private synthetic val$this:Ljava/util/function/DoublePredicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/DoublePredicate;Ljava/util/function/DoublePredicate;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/function/DoublePredicate$-java_util_function_DoublePredicate_and_java_util_function_DoublePredicate_other_LambdaImpl0;->val$this:Ljava/util/function/DoublePredicate;

    #@5
    iput-object p2, p0, Ljava/util/function/DoublePredicate$-java_util_function_DoublePredicate_and_java_util_function_DoublePredicate_other_LambdaImpl0;->val$other:Ljava/util/function/DoublePredicate;

    #@7
    return-void
.end method


# virtual methods
.method public test(D)Z
    .locals 3
    .param p1, "arg0"    # D

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/function/DoublePredicate$-java_util_function_DoublePredicate_and_java_util_function_DoublePredicate_other_LambdaImpl0;->val$this:Ljava/util/function/DoublePredicate;

    #@2
    iget-object v1, p0, Ljava/util/function/DoublePredicate$-java_util_function_DoublePredicate_and_java_util_function_DoublePredicate_other_LambdaImpl0;->val$other:Ljava/util/function/DoublePredicate;

    #@4
    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/DoublePredicate;->-java_util_function_DoublePredicate_lambda$1(Ljava/util/function/DoublePredicate;D)Z

    #@7
    move-result v0

    #@8
    return v0
.end method
