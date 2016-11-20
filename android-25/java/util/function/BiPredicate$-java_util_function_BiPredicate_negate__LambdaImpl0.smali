.class final synthetic Ljava/util/function/BiPredicate$-java_util_function_BiPredicate_negate__LambdaImpl0;
.super Ljava/lang/Object;
.source "BiPredicate.java"

# interfaces
.implements Ljava/util/function/BiPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/BiPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_BiPredicate_negate__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Ljava/util/function/BiPredicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiPredicate;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/function/BiPredicate$-java_util_function_BiPredicate_negate__LambdaImpl0;->val$this:Ljava/util/function/BiPredicate;

    #@5
    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/function/BiPredicate$-java_util_function_BiPredicate_negate__LambdaImpl0;->val$this:Ljava/util/function/BiPredicate;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->-java_util_function_BiPredicate_lambda$2(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
