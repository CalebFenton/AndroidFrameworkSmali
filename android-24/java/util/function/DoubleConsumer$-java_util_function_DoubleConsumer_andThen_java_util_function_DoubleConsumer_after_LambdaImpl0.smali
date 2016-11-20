.class final synthetic Ljava/util/function/DoubleConsumer$-java_util_function_DoubleConsumer_andThen_java_util_function_DoubleConsumer_after_LambdaImpl0;
.super Ljava/lang/Object;
.source "DoubleConsumer.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/DoubleConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_DoubleConsumer_andThen_java_util_function_DoubleConsumer_after_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$after:Ljava/util/function/DoubleConsumer;

.field private synthetic val$this:Ljava/util/function/DoubleConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/function/DoubleConsumer$-java_util_function_DoubleConsumer_andThen_java_util_function_DoubleConsumer_after_LambdaImpl0;->val$this:Ljava/util/function/DoubleConsumer;

    #@5
    iput-object p2, p0, Ljava/util/function/DoubleConsumer$-java_util_function_DoubleConsumer_andThen_java_util_function_DoubleConsumer_after_LambdaImpl0;->val$after:Ljava/util/function/DoubleConsumer;

    #@7
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "arg0"    # D

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/function/DoubleConsumer$-java_util_function_DoubleConsumer_andThen_java_util_function_DoubleConsumer_after_LambdaImpl0;->val$this:Ljava/util/function/DoubleConsumer;

    #@2
    iget-object v1, p0, Ljava/util/function/DoubleConsumer$-java_util_function_DoubleConsumer_andThen_java_util_function_DoubleConsumer_after_LambdaImpl0;->val$after:Ljava/util/function/DoubleConsumer;

    #@4
    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/DoubleConsumer;->-java_util_function_DoubleConsumer_lambda$1(Ljava/util/function/DoubleConsumer;D)V

    #@7
    return-void
.end method
