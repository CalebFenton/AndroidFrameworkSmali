.class public interface abstract Ljava/util/function/Consumer;
.super Ljava/lang/Object;
.source "Consumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/function/Consumer$-java_util_function_Consumer_andThen_java_util_function_Consumer_after_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public synthetic -java_util_function_Consumer_lambda$1(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "after"    # Ljava/util/function/Consumer;
    .param p2, "t"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 65
    .local p0, "this":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@3
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@6
    .line 0
    return-void
.end method

.method public abstract accept(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/function/Consumer",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 64
    .local p0, "this":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    .local p1, "after":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 65
    new-instance v0, Ljava/util/function/Consumer$-java_util_function_Consumer_andThen_java_util_function_Consumer_after_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/function/Consumer$-java_util_function_Consumer_andThen_java_util_function_Consumer_after_LambdaImpl0;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    #@8
    return-object v0
.end method
