.class public interface abstract Ljava/util/function/BiConsumer;
.super Ljava/lang/Object;
.source "BiConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/function/BiConsumer$-java_util_function_BiConsumer_andThen_java_util_function_BiConsumer_after_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public synthetic -java_util_function_BiConsumer_lambda$1(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "after"    # Ljava/util/function/BiConsumer;
    .param p2, "l"    # Ljava/lang/Object;
    .param p3, "r"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 71
    .local p0, "this":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TT;TU;>;"
    invoke-interface {p0, p2, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    #@3
    .line 72
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    #@6
    .line 0
    return-void
.end method

.method public abstract accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)V"
        }
    .end annotation
.end method

.method public andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;)",
            "Ljava/util/function/BiConsumer",
            "<TT;TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    .local p0, "this":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TT;TU;>;"
    .local p1, "after":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 70
    new-instance v0, Ljava/util/function/BiConsumer$-java_util_function_BiConsumer_andThen_java_util_function_BiConsumer_after_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/function/BiConsumer$-java_util_function_BiConsumer_andThen_java_util_function_BiConsumer_after_LambdaImpl0;-><init>(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    #@8
    return-object v0
.end method
