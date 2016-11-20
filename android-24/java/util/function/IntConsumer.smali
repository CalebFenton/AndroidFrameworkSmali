.class public interface abstract Ljava/util/function/IntConsumer;
.super Ljava/lang/Object;
.source "IntConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/function/IntConsumer$-java_util_function_IntConsumer_andThen_java_util_function_IntConsumer_after_LambdaImpl0;
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public synthetic -java_util_function_IntConsumer_lambda$1(Ljava/util/function/IntConsumer;I)V
    .locals 0
    .param p1, "after"    # Ljava/util/function/IntConsumer;
    .param p2, "t"    # I

    #@0
    .prologue
    .line 65
    invoke-interface {p0, p2}, Ljava/util/function/IntConsumer;->accept(I)V

    #@3
    invoke-interface {p1, p2}, Ljava/util/function/IntConsumer;->accept(I)V

    #@6
    .line 0
    return-void
.end method

.method public abstract accept(I)V
.end method

.method public andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 1
    .param p1, "after"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 65
    new-instance v0, Ljava/util/function/IntConsumer$-java_util_function_IntConsumer_andThen_java_util_function_IntConsumer_after_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/function/IntConsumer$-java_util_function_IntConsumer_andThen_java_util_function_IntConsumer_after_LambdaImpl0;-><init>(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)V

    #@8
    return-object v0
.end method
