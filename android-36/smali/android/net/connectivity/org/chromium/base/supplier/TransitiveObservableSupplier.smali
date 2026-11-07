.class public Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;
.super Ljava/lang/Object;
.source "TransitiveObservableSupplier.java"

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
.field private blacklist mCurrentTargetSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<",
            "TT;>;"
        }
    .end annotation
.end field

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

.field private final blacklist mOnTargetSupplierChangeCallback:Landroid/net/connectivity/org/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;"
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
            "TP;",
            "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$8pZTHj4ivWs9750CCg5gSRpxudw(Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->onParentSupplierChange(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xTn0F7VsziPgvKFiIJK5yq1jPV0(Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->onTargetSupplierChange(Ljava/lang/Object;)V

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
            "TP;",
            "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier<TP;TT;>;"
    .local p1, "parentSupplier":Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<TP;>;"
    .local p2, "unwrapFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<TP;Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mDelegateSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;

    .line 33
    new-instance v0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mOnParentSupplierChangeCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    .line 35
    new-instance v0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier$$ExternalSyntheticLambda1;-><init>(Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mOnTargetSupplierChangeCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    .line 48
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mParentSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    .line 49
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mUnwrapFunction:Ljava/util/function/Function;

    .line 50
    return-void
.end method

.method private blacklist onParentSupplierChange(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .line 96
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier<TP;TT;>;"
    .local p1, "parentValue":Ljava/lang/Object;, "TP;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mCurrentTargetSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    if-eqz v0, :cond_b

    .line 97
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mCurrentTargetSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mOnTargetSupplierChangeCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    invoke-interface {v0, v1}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;->removeObserver(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 102
    :cond_b
    const/4 v0, 0x0

    if-nez p1, :cond_10

    move-object v1, v0

    goto :goto_18

    :cond_10
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mUnwrapFunction:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    :goto_18
    iput-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mCurrentTargetSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    .line 104
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mCurrentTargetSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    if-nez v1, :cond_22

    .line 105
    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->onTargetSupplierChange(Ljava/lang/Object;)V

    goto :goto_2d

    .line 112
    :cond_22
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mCurrentTargetSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mOnTargetSupplierChangeCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    .line 113
    invoke-interface {v0, v1}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;->addObserver(Landroid/net/connectivity/org/chromium/base/Callback;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->onTargetSupplierChange(Ljava/lang/Object;)V

    .line 115
    :goto_2d
    return-void
.end method

.method private blacklist onTargetSupplierChange(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 118
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier<TP;TT;>;"
    .local p1, "targetValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mDelegateSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->set(Ljava/lang/Object;)V

    .line 119
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

    .line 54
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier<TP;TT;>;"
    .local p1, "obs":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mDelegateSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_13

    .line 55
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mParentSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mOnParentSupplierChangeCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    invoke-interface {v0, v1}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;->addObserver(Landroid/net/connectivity/org/chromium/base/Callback;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->onParentSupplierChange(Ljava/lang/Object;)V

    .line 57
    :cond_13
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mDelegateSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->addObserver(Landroid/net/connectivity/org/chromium/base/Callback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 74
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier<TP;TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mDelegateSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 75
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mDelegateSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 79
    :cond_f
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mParentSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, "parentValue":Ljava/lang/Object;, "TP;"
    if-eqz v0, :cond_26

    .line 81
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mUnwrapFunction:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    .line 82
    .local v1, "targetSupplier":Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<TT;>;"
    if-eqz v1, :cond_26

    .line 83
    invoke-interface {v1}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;->get()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 86
    .end local v1    # "targetSupplier":Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<TT;>;"
    :cond_26
    const/4 v1, 0x0

    return-object v1
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

    .line 62
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier<TP;TT;>;"
    .local p1, "obs":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mDelegateSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->removeObserver(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 63
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mDelegateSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplierImpl;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_22

    .line 64
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mParentSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mOnParentSupplierChangeCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    invoke-interface {v0, v1}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;->removeObserver(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 65
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mCurrentTargetSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    if-eqz v0, :cond_22

    .line 66
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mCurrentTargetSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mOnTargetSupplierChangeCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    invoke-interface {v0, v1}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;->removeObserver(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/TransitiveObservableSupplier;->mCurrentTargetSupplier:Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    .line 70
    :cond_22
    return-void
.end method
