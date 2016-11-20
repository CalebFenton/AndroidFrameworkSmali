.class final synthetic Ljava/util/function/LongPredicate$-java_util_function_LongPredicate_negate__LambdaImpl0;
.super Ljava/lang/Object;
.source "LongPredicate.java"

# interfaces
.implements Ljava/util/function/LongPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/LongPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_LongPredicate_negate__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Ljava/util/function/LongPredicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/LongPredicate;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/function/LongPredicate$-java_util_function_LongPredicate_negate__LambdaImpl0;->val$this:Ljava/util/function/LongPredicate;

    #@5
    return-void
.end method


# virtual methods
.method public test(J)Z
    .locals 1
    .param p1, "arg0"    # J

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/function/LongPredicate$-java_util_function_LongPredicate_negate__LambdaImpl0;->val$this:Ljava/util/function/LongPredicate;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/function/LongPredicate;->-java_util_function_LongPredicate_lambda$2(J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
