.class public Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;
.super Ljava/lang/Object;
.source "UnwrapObservableSupplier.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mDelegateSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mOnParentSupplierChangeCallback:Landroid/net/connectivity/org/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final blacklist mParentSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final blacklist mUnwrapFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TP;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$xshWXq_CWmLi1XYmTkK4sl-freY(Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->onParentSupplierChange(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;Ljava/util/function/Function;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<",
            "TP;>;",
            "Ljava/util/function/Function<",
            "TP;TT;>;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier<TP;TT;>;"
    .local p1, "parentSupplier":Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<TP;>;"
    .local p2, "unwrapFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<TP;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->mDelegateSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;

    .line 49
    new-instance v0, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->mOnParentSupplierChangeCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    .line 60
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->mParentSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    .line 61
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->mUnwrapFunction:Ljava/util/function/Function;

    .line 62
    return-void
.end method

.method private blacklist onParentSupplierChange(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .line 94
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier<TP;TT;>;"
    .local p1, "parentValue":Ljava/lang/Object;, "TP;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->mDelegateSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->mUnwrapFunction:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->set(Ljava/lang/Object;)V

    .line 95
    return-void
.end method


# virtual methods
.method public blacklist addObserver(Landroid/net/connectivity/org/chromium/base/Callback;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 74
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier<TP;TT;>;"
    .local p1, "obs":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->mDelegateSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_13

    .line 77
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->mParentSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->mOnParentSupplierChangeCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    invoke-interface {v0, v1}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;->addObserver(Landroid/net/connectivity/org/chromium/base/Callback;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->onParentSupplierChange(Ljava/lang/Object;)V

    .line 79
    :cond_13
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->mDelegateSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->addObserver(Landroid/net/connectivity/org/chromium/base/Callback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 66
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier<TP;TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->mUnwrapFunction:Ljava/util/function/Function;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->mParentSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    invoke-interface {v1}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeObserver(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier<TP;TT;>;"
    .local p1, "obs":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->mDelegateSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->removeObserver(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 88
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->mDelegateSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_14

    .line 89
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->mParentSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/UnwrapObservableSupplier;->mOnParentSupplierChangeCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    invoke-interface {v0, v1}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;->removeObserver(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 91
    :cond_14
    return-void
.end method
