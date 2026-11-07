.class public interface abstract Ljava/util/function/BinaryOperator;
.super Ljava/lang/Object;
.source "BinaryOperator.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "TT;TT;TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist lambda$maxBy$1(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "comparator"    # Ljava/util/Comparator;
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .line 74
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    move-object v0, p1

    goto :goto_9

    :cond_8
    move-object v0, p2

    :goto_9
    return-object v0
.end method

.method public static synthetic blacklist lambda$minBy$0(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "comparator"    # Ljava/util/Comparator;
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .line 59
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_8

    move-object v0, p1

    goto :goto_9

    :cond_8
    move-object v0, p2

    :goto_9
    return-object v0
.end method

.method public static whitelist test-api maxBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;"
        }
    .end annotation

    .line 73
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/util/function/BinaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/util/function/BinaryOperator$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static whitelist test-api minBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;"
        }
    .end annotation

    .line 58
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/function/BinaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ljava/util/function/BinaryOperator$$ExternalSyntheticLambda1;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
