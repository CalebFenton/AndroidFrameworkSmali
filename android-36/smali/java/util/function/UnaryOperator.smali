.class public interface abstract Ljava/util/function/UnaryOperator;
.super Ljava/lang/Object;
.source "UnaryOperator.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "TT;TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static whitelist test-api identity()Ljava/util/function/UnaryOperator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/function/UnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/function/UnaryOperator$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public static synthetic blacklist lambda$identity$0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .param p0, "t"    # Ljava/lang/Object;

    .line 50
    return-object p0
.end method
