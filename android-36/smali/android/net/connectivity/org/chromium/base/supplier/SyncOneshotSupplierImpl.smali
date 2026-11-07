.class public Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;
.super Ljava/lang/Object;
.source "SyncOneshotSupplierImpl.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplier<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private blacklist mPendingCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 32
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

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

    .line 57
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 58
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist onAvailable(Landroid/net/connectivity/org/chromium/base/Callback;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 42
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl<TT;>;"
    .local p1, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 43
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;->get()Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "object":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_f

    .line 45
    invoke-interface {p1, v0}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_1f

    .line 47
    :cond_f
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;->mPendingCallbacks:Ljava/util/ArrayList;

    if-nez v1, :cond_1a

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;->mPendingCallbacks:Ljava/util/ArrayList;

    .line 50
    :cond_1a
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;->mPendingCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :goto_1f
    return-object v0
.end method

.method public blacklist set(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 70
    nop

    .line 71
    nop

    .line 72
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;->mObject:Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;->mPendingCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    return-void

    .line 75
    :cond_e
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;->mPendingCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/Callback;

    .line 76
    .local v1, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    invoke-interface {v1, p1}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 77
    .end local v1    # "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    goto :goto_14

    .line 78
    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplierImpl;->mPendingCallbacks:Ljava/util/ArrayList;

    .line 79
    return-void
.end method
