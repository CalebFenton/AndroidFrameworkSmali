.class public interface abstract Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier;
.super Ljava/lang/Object;
.source "LazyOneshotSupplier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static blacklist fromSupplier(Landroid/net/connectivity/org/chromium/base/supplier/Supplier;)Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/org/chromium/base/supplier/Supplier<",
            "TT;>;)",
            "Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier<",
            "TT;>;"
        }
    .end annotation

    .line 57
    .local p0, "supplier":Landroid/net/connectivity/org/chromium/base/supplier/Supplier;, "Landroid/net/connectivity/org/chromium/base/supplier/Supplier<TT;>;"
    new-instance v0, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier$2;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier$2;-><init>(Landroid/net/connectivity/org/chromium/base/supplier/Supplier;)V

    return-object v0
.end method

.method public static blacklist fromValue(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier<",
            "TT;>;"
        }
    .end annotation

    .line 44
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier$1;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract blacklist hasValue()Z
.end method

.method public abstract blacklist onAvailable(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;)V"
        }
    .end annotation
.end method
