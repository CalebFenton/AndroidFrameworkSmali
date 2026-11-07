.class public interface abstract Lcom/android/internal/util/function/pooled/PooledSupplier;
.super Ljava/lang/Object;
.source "PooledSupplier.java"

# interfaces
.implements Lcom/android/internal/util/function/pooled/PooledLambda;
.implements Ljava/util/function/Supplier;
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;,
        Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;,
        Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/function/pooled/PooledLambda;",
        "Ljava/util/function/Supplier<",
        "TT;>;",
        "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract blacklist asRunnable()Lcom/android/internal/util/function/pooled/PooledRunnable;
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
    .registers 2

    .line 32
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledSupplier;, "Lcom/android/internal/util/function/pooled/PooledSupplier<TT;>;"
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledSupplier;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TT;>;"
        }
    .end annotation
.end method
