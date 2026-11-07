.class public Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Default;
.super Ljava/lang/Object;
.source "IQuickAccessWalletServiceCallbacks.java"

# interfaces
.implements Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onGestureTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist onGetWalletCardsFailure(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .registers 2
    .param p1, "error"    # Landroid/service/quickaccesswallet/GetWalletCardsError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist onGetWalletCardsSuccess(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .registers 2
    .param p1, "response"    # Landroid/service/quickaccesswallet/GetWalletCardsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist onTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist onWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/service/quickaccesswallet/WalletServiceEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method
