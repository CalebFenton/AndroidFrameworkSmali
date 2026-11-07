.class public Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;
.super Ljava/lang/Object;
.source "OneShotCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback$CallbackWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/net/connectivity/org/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final blacklist mCallbackWrapper:Landroid/net/connectivity/org/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final blacklist mWeakSupplier:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;)Landroid/net/connectivity/org/chromium/base/Callback;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;->mCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackWrapper(Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;)Landroid/net/connectivity/org/chromium/base/Callback;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;->mCallbackWrapper:Landroid/net/connectivity/org/chromium/base/Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWeakSupplier(Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;->mWeakSupplier:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<",
            "TE;>;",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TE;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;, "Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback<TE;>;"
    .local p1, "supplier":Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<TE;>;"
    .local p2, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback$CallbackWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback$CallbackWrapper;-><init>(Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback-IA;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;->mCallbackWrapper:Landroid/net/connectivity/org/chromium/base/Callback;

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;->mWeakSupplier:Ljava/lang/ref/WeakReference;

    .line 43
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;->mCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    .line 45
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;->mCallbackWrapper:Landroid/net/connectivity/org/chromium/base/Callback;

    invoke-interface {p1, v0}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;->addObserver(Landroid/net/connectivity/org/chromium/base/Callback;)Ljava/lang/Object;

    .line 46
    return-void
.end method
