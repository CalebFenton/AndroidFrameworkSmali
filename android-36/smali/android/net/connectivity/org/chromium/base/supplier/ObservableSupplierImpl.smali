.class public Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;
.super Ljava/lang/Object;
.source "ObservableSupplierImpl.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final blacklist mObservers:Landroid/net/connectivity/org/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/ObserverList<",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;


# direct methods
.method public static synthetic blacklist $r8$lambda$LAqHvVyg5t2mLXjl6T0nI5FzfAo(Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;Ljava/lang/Object;Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->lambda$addObserver$0(Ljava/lang/Object;Landroid/net/connectivity/org/chromium/base/Callback;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 33
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mObservers:Landroid/net/connectivity/org/chromium/base/ObserverList;

    .line 42
    nop

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl<TE;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mObservers:Landroid/net/connectivity/org/chromium/base/ObserverList;

    .line 46
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mObject:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method private synthetic blacklist lambda$addObserver$0(Ljava/lang/Object;Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 4
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "obs"    # Landroid/net/connectivity/org/chromium/base/Callback;

    .line 58
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl<TE;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mObject:Ljava/lang/Object;

    if-ne v0, p1, :cond_13

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mObservers:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0, p2}, Landroid/net/connectivity/org/chromium/base/ObserverList;->hasObserver(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_13

    .line 59
    :cond_d
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mObject:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 60
    return-void

    .line 58
    :cond_13
    :goto_13
    return-void
.end method


# virtual methods
.method public blacklist addObserver(Landroid/net/connectivity/org/chromium/base/Callback;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 52
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl<TE;>;"
    .local p1, "obs":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TE;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mObservers:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 55
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mObject:Ljava/lang/Object;

    .line 56
    .local v0, "currentObject":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;Ljava/lang/Object;Landroid/net/connectivity/org/chromium/base/Callback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .end local v0    # "currentObject":Ljava/lang/Object;, "TE;"
    :cond_15
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 96
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl<TE;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidOrInstrumentationThread()V

    .line 97
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist hasObservers()Z
    .registers 2

    .line 103
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl<TE;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mObservers:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist removeObserver(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TE;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl<TE;>;"
    .local p1, "obs":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TE;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mObservers:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public blacklist set(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;, "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 81
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mObject:Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 82
    return-void

    .line 85
    :cond_e
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mObject:Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mObservers:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/Callback;

    .line 88
    .local v1, "observer":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TE;>;"
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->mObject:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 89
    .end local v1    # "observer":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TE;>;"
    goto :goto_16

    .line 90
    :cond_28
    return-void
.end method
