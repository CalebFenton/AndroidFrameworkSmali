.class public Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Default;
.super Ljava/lang/Object;
.source "INsdServiceConnector.java"

# interfaces
.implements Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;
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

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist discoverServices(ILandroid/net/nsd/DiscoveryRequest;)V
    .registers 3
    .param p1, "listenerKey"    # I
    .param p2, "discoveryRequest"    # Landroid/net/nsd/DiscoveryRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist registerOffloadEngine(Ljava/lang/String;Landroid/net/connectivity/android/net/nsd/IOffloadEngine;JJ)V
    .registers 7
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/net/connectivity/android/net/nsd/IOffloadEngine;
    .param p3, "offloadCapabilities"    # J
    .param p5, "offloadType"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist registerService(ILandroid/net/nsd/AdvertisingRequest;)V
    .registers 3
    .param p1, "listenerKey"    # I
    .param p2, "advertisingRequest"    # Landroid/net/nsd/AdvertisingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist registerServiceInfoCallback(ILandroid/net/nsd/NsdServiceInfo;)V
    .registers 3
    .param p1, "listenerKey"    # I
    .param p2, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist resolveService(ILandroid/net/nsd/NsdServiceInfo;)V
    .registers 3
    .param p1, "listenerKey"    # I
    .param p2, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist startDaemon()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist stopDiscovery(I)V
    .registers 2
    .param p1, "listenerKey"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist stopResolution(I)V
    .registers 2
    .param p1, "listenerKey"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist unregisterOffloadEngine(Landroid/net/connectivity/android/net/nsd/IOffloadEngine;)V
    .registers 2
    .param p1, "cb"    # Landroid/net/connectivity/android/net/nsd/IOffloadEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist unregisterService(I)V
    .registers 2
    .param p1, "listenerKey"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist unregisterServiceInfoCallback(I)V
    .registers 2
    .param p1, "listenerKey"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method
