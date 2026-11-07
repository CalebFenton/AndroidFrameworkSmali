.class public interface abstract Landroid/net/wifi/p2p/IWifiP2pListener;
.super Ljava/lang/Object;
.source "IWifiP2pListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/IWifiP2pListener$Stub;,
        Landroid/net/wifi/p2p/IWifiP2pListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.p2p.IWifiP2pListener"


# virtual methods
.method public abstract blacklist onDeviceConfigurationChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDiscoveryStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onFrequencyChanged(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onGroupCreated(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onGroupCreating()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onGroupCreationFailed(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onGroupNegotiationRejectedByUser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onGroupRemoved()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onListenStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onP2pStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onPeerClientDisconnected(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onPeerClientJoined(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onPeerListChanged(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onPersistentGroupsChanged(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
