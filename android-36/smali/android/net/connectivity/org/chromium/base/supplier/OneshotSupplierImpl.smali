.class public Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl;
.super Ljava/lang/Object;
.source "OneshotSupplierImpl.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplier<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist mPromise:Landroid/net/connectivity/org/chromium/base/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/Promise<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 29
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 29
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/net/connectivity/org/chromium/base/Promise;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/Promise;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl;->mPromise:Landroid/net/connectivity/org/chromium/base/Promise;

    .line 31
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    return-void
.end method


# virtual methods
.method public whitelist test-api get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 42
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 43
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl;->mPromise:Landroid/net/connectivity/org/chromium/base/Promise;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/Promise;->isFulfilled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl;->mPromise:Landroid/net/connectivity/org/chromium/base/Promise;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/Promise;->getResult()Ljava/lang/Object;

    move-result-object v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return-object v0
.end method

.method public blacklist onAvailable(Landroid/net/connectivity/org/chromium/base/Callback;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 35
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl<TT;>;"
    .local p1, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 36
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl;->mPromise:Landroid/net/connectivity/org/chromium/base/Promise;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/Promise;->then(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 37
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 55
    nop

    .line 56
    nop

    .line 57
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplierImpl;->mPromise:Landroid/net/connectivity/org/chromium/base/Promise;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/Promise;->fulfill(Ljava/lang/Object;)V

    .line 58
    return-void
.end method
