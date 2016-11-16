.class final synthetic Ljava/util/function/LongConsumer$-java_util_function_LongConsumer_andThen_java_util_function_LongConsumer_after_LambdaImpl0;
.super Ljava/lang/Object;
.source "LongConsumer.java"

# interfaces
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/LongConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_LongConsumer_andThen_java_util_function_LongConsumer_after_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$after:Ljava/util/function/LongConsumer;

.field private synthetic val$this:Ljava/util/function/LongConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/function/LongConsumer$-java_util_function_LongConsumer_andThen_java_util_function_LongConsumer_after_LambdaImpl0;->val$this:Ljava/util/function/LongConsumer;

    #@5
    iput-object p2, p0, Ljava/util/function/LongConsumer$-java_util_function_LongConsumer_andThen_java_util_function_LongConsumer_after_LambdaImpl0;->val$after:Ljava/util/function/LongConsumer;

    #@7
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "arg0"    # J

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/function/LongConsumer$-java_util_function_LongConsumer_andThen_java_util_function_LongConsumer_after_LambdaImpl0;->val$this:Ljava/util/function/LongConsumer;

    #@2
    iget-object v1, p0, Ljava/util/function/LongConsumer$-java_util_function_LongConsumer_andThen_java_util_function_LongConsumer_after_LambdaImpl0;->val$after:Ljava/util/function/LongConsumer;

    #@4
    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/LongConsumer;->-java_util_function_LongConsumer_lambda$1(Ljava/util/function/LongConsumer;J)V

    #@7
    return-void
.end method
