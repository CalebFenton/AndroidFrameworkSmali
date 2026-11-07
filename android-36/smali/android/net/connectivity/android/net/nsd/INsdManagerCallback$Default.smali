.class public Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Default;
.super Ljava/lang/Object;
.source "INsdManagerCallback.java"

# interfaces
.implements Landroid/net/connectivity/android/net/nsd/INsdManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/nsd/INsdManagerCallback;
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

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onDiscoverServicesFailed(II)V
    .registers 3
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onDiscoverServicesStarted(ILandroid/net/nsd/DiscoveryRequest;)V
    .registers 3
    .param p1, "listenerKey"    # I
    .param p2, "discoveryRequest"    # Landroid/net/nsd/DiscoveryRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onRegisterServiceFailed(II)V
    .registers 3
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist onRegisterServiceSucceeded(ILandroid/net/nsd/NsdServiceInfo;)V
    .registers 3
    .param p1, "listenerKey"    # I
    .param p2, "info"    # Landroid/net/nsd/NsdServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist onResolveServiceFailed(II)V
    .registers 3
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist onResolveServiceSucceeded(ILandroid/net/nsd/NsdServiceInfo;)V
    .registers 3
    .param p1, "listenerKey"    # I
    .param p2, "info"    # Landroid/net/nsd/NsdServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist onServiceFound(ILandroid/net/nsd/NsdServiceInfo;)V
    .registers 3
    .param p1, "listenerKey"    # I
    .param p2, "info"    # Landroid/net/nsd/NsdServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onServiceInfoCallbackRegistrationFailed(II)V
    .registers 3
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public blacklist onServiceInfoCallbackUnregistered(I)V
    .registers 2
    .param p1, "listenerKey"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public blacklist onServiceLost(ILandroid/net/nsd/NsdServiceInfo;)V
    .registers 3
    .param p1, "listenerKey"    # I
    .param p2, "info"    # Landroid/net/nsd/NsdServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist onServiceUpdated(ILandroid/net/nsd/NsdServiceInfo;)V
    .registers 3
    .param p1, "listenerKey"    # I
    .param p2, "info"    # Landroid/net/nsd/NsdServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public blacklist onServiceUpdatedLost(I)V
    .registers 2
    .param p1, "listenerKey"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist onStopDiscoveryFailed(II)V
    .registers 3
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist onStopDiscoverySucceeded(I)V
    .registers 2
    .param p1, "listenerKey"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist onStopResolutionFailed(II)V
    .registers 3
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist onStopResolutionSucceeded(I)V
    .registers 2
    .param p1, "listenerKey"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist onUnregisterServiceFailed(II)V
    .registers 3
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist onUnregisterServiceSucceeded(I)V
    .registers 2
    .param p1, "listenerKey"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method
