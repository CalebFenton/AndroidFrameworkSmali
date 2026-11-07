.class public abstract Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;
.super Ljava/lang/Object;
.source "LazyOneshotSupplierImpl.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mDoSetCalled:Z

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

    .line 40
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/net/connectivity/org/chromium/base/Promise;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/Promise;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;->mPromise:Landroid/net/connectivity/org/chromium/base/Promise;

    .line 42
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    return-void
.end method

.method private blacklist tryDoSet()V
    .registers 2

    .line 96
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl<TT;>;"
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;->mDoSetCalled:Z

    if-eqz v0, :cond_5

    return-void

    .line 97
    :cond_5
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;->doSet()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;->mDoSetCalled:Z

    .line 99
    return-void
.end method


# virtual methods
.method public abstract blacklist doSet()V
.end method

.method public blacklist get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 64
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 65
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;->hasValue()Z

    move-result v0

    if-nez v0, :cond_e

    .line 66
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;->tryDoSet()V

    .line 68
    :cond_e
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;->mPromise:Landroid/net/connectivity/org/chromium/base/Promise;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/Promise;->getResult()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return-object v0
.end method

.method public blacklist hasValue()Z
    .registers 2

    .line 74
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;->mPromise:Landroid/net/connectivity/org/chromium/base/Promise;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/Promise;->isFulfilled()Z

    move-result v0

    return v0
.end method

.method public blacklist onAvailable(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl<TT;>;"
    .local p1, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 53
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;->mPromise:Landroid/net/connectivity/org/chromium/base/Promise;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/Promise;->then(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 54
    return-void
.end method

.method public blacklist set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 91
    nop

    .line 92
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;->mPromise:Landroid/net/connectivity/org/chromium/base/Promise;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/Promise;->fulfill(Ljava/lang/Object;)V

    .line 93
    return-void
.end method
