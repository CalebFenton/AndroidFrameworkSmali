.class final synthetic Ljava/util/function/Predicate$-java_util_function_Predicate_negate__LambdaImpl0;
.super Ljava/lang/Object;
.source "Predicate.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_Predicate_negate__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/function/Predicate$-java_util_function_Predicate_negate__LambdaImpl0;->val$this:Ljava/util/function/Predicate;

    #@5
    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/function/Predicate$-java_util_function_Predicate_negate__LambdaImpl0;->val$this:Ljava/util/function/Predicate;

    #@2
    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->-java_util_function_Predicate_lambda$2(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
