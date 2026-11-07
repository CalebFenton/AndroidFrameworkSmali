.class public abstract Landroid/net/connectivity/org/chromium/base/supplier/UnownedUserDataSupplier;
.super Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;
.source "UnownedUserDataSupplier.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/lifetime/Destroyable;
.implements Landroid/net/connectivity/org/chromium/base/UnownedUserData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl<",
        "TE;>;",
        "Landroid/net/connectivity/org/chromium/base/lifetime/Destroyable;",
        "Landroid/net/connectivity/org/chromium/base/UnownedUserData;"
    }
.end annotation


# instance fields
.field private final blacklist mDestroyChecker:Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;

.field private final blacklist mUudKey:Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<",
            "Landroid/net/connectivity/org/chromium/base/supplier/UnownedUserDataSupplier<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<",
            "+",
            "Landroid/net/connectivity/org/chromium/base/supplier/UnownedUserDataSupplier<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/UnownedUserDataSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/UnownedUserDataSupplier<TE;>;"
    .local p1, "uudKey":Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;, "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<+Landroid/net/connectivity/org/chromium/base/supplier/UnownedUserDataSupplier<TE;>;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;-><init>()V

    .line 48
    new-instance v0, Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnownedUserDataSupplier;->mDestroyChecker:Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;

    .line 56
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnownedUserDataSupplier;->mUudKey:Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;

    .line 57
    return-void
.end method


# virtual methods
.method public blacklist attach(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;)V
    .registers 3
    .param p1, "host"    # Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;

    .line 64
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/UnownedUserDataSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/UnownedUserDataSupplier<TE;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnownedUserDataSupplier;->mDestroyChecker:Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;->checkNotDestroyed()V

    .line 65
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnownedUserDataSupplier;->mUudKey:Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;

    invoke-virtual {v0, p1, p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->attachToHost(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;Landroid/net/connectivity/org/chromium/base/UnownedUserData;)V

    .line 66
    return-void
.end method

.method public blacklist destroy()V
    .registers 2

    .line 71
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/UnownedUserDataSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/UnownedUserDataSupplier<TE;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnownedUserDataSupplier;->mDestroyChecker:Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;->destroy()V

    .line 72
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnownedUserDataSupplier;->mUudKey:Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->detachFromAllHosts(Landroid/net/connectivity/org/chromium/base/UnownedUserData;)V

    .line 73
    return-void
.end method
