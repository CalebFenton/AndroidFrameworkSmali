.class public Landroid/net/connectivity/org/chromium/base/ValueChangedCallback;
.super Ljava/lang/Object;
.source "ValueChangedCallback.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/ValueChangedCallback$ValueChangedObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/org/chromium/base/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blacklist mLastValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist mValueChangedObserver:Landroid/net/connectivity/org/chromium/base/ValueChangedCallback$ValueChangedObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/ValueChangedCallback$ValueChangedObserver<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/ValueChangedCallback$ValueChangedObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/ValueChangedCallback$ValueChangedObserver<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ValueChangedCallback;, "Landroid/net/connectivity/org/chromium/base/ValueChangedCallback<TT;>;"
    .local p1, "onValueChangedObserver":Landroid/net/connectivity/org/chromium/base/ValueChangedCallback$ValueChangedObserver;, "Landroid/net/connectivity/org/chromium/base/ValueChangedCallback$ValueChangedObserver<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/ValueChangedCallback;->mValueChangedObserver:Landroid/net/connectivity/org/chromium/base/ValueChangedCallback$ValueChangedObserver;

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist onResult(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ValueChangedCallback;, "Landroid/net/connectivity/org/chromium/base/ValueChangedCallback<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ValueChangedCallback;->mLastValue:Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 56
    :cond_9
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ValueChangedCallback;->mLastValue:Ljava/lang/Object;

    .line 57
    .local v0, "oldLastValue":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/ValueChangedCallback;->mLastValue:Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/ValueChangedCallback;->mValueChangedObserver:Landroid/net/connectivity/org/chromium/base/ValueChangedCallback$ValueChangedObserver;

    invoke-interface {v1, p1, v0}, Landroid/net/connectivity/org/chromium/base/ValueChangedCallback$ValueChangedObserver;->onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    return-void
.end method
