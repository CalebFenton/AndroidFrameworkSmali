.class public interface abstract Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;
.super Ljava/lang/Object;
.source "FunctionalUtils.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/FunctionalUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ThrowingFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "TT;TR;>;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;->applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 193
    :catch_5
    move-exception v0

    .line 194
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public abstract blacklist applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
