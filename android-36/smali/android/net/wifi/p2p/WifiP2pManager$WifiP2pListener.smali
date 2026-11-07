.class public interface abstract Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiP2pListener"
.end annotation


# virtual methods
.method public whitelist onDeviceConfigurationChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 2
    .param p1, "p2pDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1398
    return-void
.end method

.method public whitelist onDiscoveryStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 1374
    return-void
.end method

.method public whitelist onFrequencyChanged(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 3
    .param p1, "p2pInfo"    # Landroid/net/wifi/p2p/WifiP2pInfo;
    .param p2, "p2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1491
    return-void
.end method

.method public whitelist onGroupCreated(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 3
    .param p1, "p2pInfo"    # Landroid/net/wifi/p2p/WifiP2pInfo;
    .param p2, "p2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1458
    return-void
.end method

.method public whitelist onGroupCreating()V
    .registers 1

    .line 1431
    return-void
.end method

.method public whitelist onGroupCreationFailed(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 1447
    return-void
.end method

.method public whitelist onGroupNegotiationRejectedByUser()V
    .registers 1

    .line 1438
    return-void
.end method

.method public whitelist onGroupRemoved()V
    .registers 1

    .line 1498
    return-void
.end method

.method public whitelist onListenStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 1387
    return-void
.end method

.method public whitelist onP2pStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 1361
    return-void
.end method

.method public whitelist onPeerClientDisconnected(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 3
    .param p1, "p2pInfo"    # Landroid/net/wifi/p2p/WifiP2pInfo;
    .param p2, "p2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1480
    return-void
.end method

.method public whitelist onPeerClientJoined(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 3
    .param p1, "p2pInfo"    # Landroid/net/wifi/p2p/WifiP2pInfo;
    .param p2, "p2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1469
    return-void
.end method

.method public whitelist onPeerListChanged(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .registers 2
    .param p1, "p2pDeviceList"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 1410
    return-void
.end method

.method public whitelist onPersistentGroupsChanged(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .registers 2
    .param p1, "p2pGroupList"    # Landroid/net/wifi/p2p/WifiP2pGroupList;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1424
    return-void
.end method
