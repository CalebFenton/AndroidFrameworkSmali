.class public Landroid/net/wifi/p2p/IWifiP2pListener$Default;
.super Ljava/lang/Object;
.source "IWifiP2pListener.java"

# interfaces
.implements Landroid/net/wifi/p2p/IWifiP2pListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/IWifiP2pListener;
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

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onDeviceConfigurationChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 2
    .param p1, "p2pDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist onDiscoveryStateChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onFrequencyChanged(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 3
    .param p1, "p2pInfo"    # Landroid/net/wifi/p2p/WifiP2pInfo;
    .param p2, "p2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist onGroupCreated(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 3
    .param p1, "p2pInfo"    # Landroid/net/wifi/p2p/WifiP2pInfo;
    .param p2, "p2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist onGroupCreating()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist onGroupCreationFailed(I)V
    .registers 2
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist onGroupNegotiationRejectedByUser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist onGroupRemoved()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist onListenStateChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onP2pStateChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onPeerClientDisconnected(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 3
    .param p1, "p2pInfo"    # Landroid/net/wifi/p2p/WifiP2pInfo;
    .param p2, "p2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist onPeerClientJoined(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 3
    .param p1, "p2pInfo"    # Landroid/net/wifi/p2p/WifiP2pInfo;
    .param p2, "p2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist onPeerListChanged(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .registers 2
    .param p1, "p2pDeviceList"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist onPersistentGroupsChanged(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .registers 2
    .param p1, "p2pGroupList"    # Landroid/net/wifi/p2p/WifiP2pGroupList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method
