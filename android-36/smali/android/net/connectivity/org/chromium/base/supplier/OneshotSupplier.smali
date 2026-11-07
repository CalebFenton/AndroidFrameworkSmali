.class public interface abstract Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplier;
.super Ljava/lang/Object;
.source "OneshotSupplier.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/supplier/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/org/chromium/base/supplier/Supplier<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract blacklist onAvailable(Landroid/net/connectivity/org/chromium/base/Callback;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public blacklist runSyncOrOnAvailable(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplier<TT;>;"
    .local p1, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    invoke-interface {p0}, Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplier;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 62
    invoke-interface {p0}, Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_11

    .line 64
    :cond_e
    invoke-interface {p0, p1}, Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplier;->onAvailable(Landroid/net/connectivity/org/chromium/base/Callback;)Ljava/lang/Object;

    .line 66
    :goto_11
    return-void
.end method
