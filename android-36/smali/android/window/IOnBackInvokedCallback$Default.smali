.class public Landroid/window/IOnBackInvokedCallback$Default;
.super Ljava/lang/Object;
.source "IOnBackInvokedCallback.java"

# interfaces
.implements Landroid/window/IOnBackInvokedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IOnBackInvokedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onBackCancelled()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist onBackInvoked()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist onBackProgressed(Landroid/window/BackMotionEvent;)V
    .registers 2
    .param p1, "backMotionEvent"    # Landroid/window/BackMotionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist onBackStarted(Landroid/window/BackMotionEvent;)V
    .registers 2
    .param p1, "backMotionEvent"    # Landroid/window/BackMotionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist setHandoffHandler(Landroid/window/IBackAnimationHandoffHandler;)V
    .registers 2
    .param p1, "handoffHandler"    # Landroid/window/IBackAnimationHandoffHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public blacklist setTriggerBack(Z)V
    .registers 2
    .param p1, "triggerBack"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method
