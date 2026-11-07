.class public Lcom/android/internal/inputmethod/IImeTracker$Default;
.super Ljava/lang/Object;
.source "IImeTracker.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IImeTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist finishTrackingPendingImeVisibilityRequests(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2
    .param p1, "completionSignal"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public blacklist hasPendingImeVisibilityRequests()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 3
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "phase"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 2
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method

.method public blacklist onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 3
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "phase"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 2
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public blacklist onProgress(Landroid/os/IBinder;I)V
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "phase"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist onShown(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 2
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # I
    .param p4, "origin"    # I
    .param p5, "reason"    # I
    .param p6, "fromUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method
