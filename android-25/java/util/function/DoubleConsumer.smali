.class public interface abstract Ljava/util/function/DoubleConsumer;
.super Ljava/lang/Object;
.source "DoubleConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/function/DoubleConsumer$-java_util_function_DoubleConsumer_andThen_java_util_function_DoubleConsumer_after_LambdaImpl0;
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public synthetic -java_util_function_DoubleConsumer_lambda$1(Ljava/util/function/DoubleConsumer;D)V
    .locals 0
    .param p1, "after"    # Ljava/util/function/DoubleConsumer;
    .param p2, "t"    # D

    #@0
    .prologue
    .line 65
    invoke-interface {p0, p2, p3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    #@3
    invoke-interface {p1, p2, p3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    #@6
    .line 0
    return-void
.end method

.method public abstract accept(D)V
.end method

.method public andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 1
    .param p1, "after"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 65
    new-instance v0, Ljava/util/function/DoubleConsumer$-java_util_function_DoubleConsumer_andThen_java_util_function_DoubleConsumer_after_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/function/DoubleConsumer$-java_util_function_DoubleConsumer_andThen_java_util_function_DoubleConsumer_after_LambdaImpl0;-><init>(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)V

    #@8
    return-object v0
.end method
