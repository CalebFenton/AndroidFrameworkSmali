.class public interface abstract Landroid/net/wifi/WifiManager$SoftApCallback;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SoftApCallback"
.end annotation


# virtual methods
.method public whitelist onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V
    .registers 3
    .param p1, "client"    # Landroid/net/wifi/WifiClient;
    .param p2, "blockedReason"    # I

    .line 6937
    return-void
.end method

.method public whitelist onCapabilityChanged(Landroid/net/wifi/SoftApCapability;)V
    .registers 2
    .param p1, "softApCapability"    # Landroid/net/wifi/SoftApCapability;

    .line 6921
    return-void
.end method

.method public whitelist onClientsDisconnected(Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V
    .registers 3
    .param p1, "info"    # Landroid/net/wifi/SoftApInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/SoftApInfo;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation

    .line 6948
    .local p2, "clients":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiClient;>;"
    return-void
.end method

.method public whitelist onConnectedClientsChanged(Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V
    .registers 3
    .param p1, "info"    # Landroid/net/wifi/SoftApInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/SoftApInfo;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation

    .line 6862
    .local p2, "clients":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiClient;>;"
    return-void
.end method

.method public whitelist onConnectedClientsChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6843
    .local p1, "clients":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiClient;>;"
    return-void
.end method

.method public whitelist onInfoChanged(Landroid/net/wifi/SoftApInfo;)V
    .registers 2
    .param p1, "softApInfo"    # Landroid/net/wifi/SoftApInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6882
    return-void
.end method

.method public whitelist onInfoChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/SoftApInfo;",
            ">;)V"
        }
    .end annotation

    .line 6911
    .local p1, "softApInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/SoftApInfo;>;"
    return-void
.end method

.method public whitelist onStateChanged(II)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "failureReason"    # I

    .line 6817
    return-void
.end method

.method public whitelist onStateChanged(Landroid/net/wifi/SoftApState;)V
    .registers 4
    .param p1, "state"    # Landroid/net/wifi/SoftApState;

    .line 6831
    iget v0, p1, Landroid/net/wifi/SoftApState;->mState:I

    iget v1, p1, Landroid/net/wifi/SoftApState;->mFailureReason:I

    invoke-interface {p0, v0, v1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStateChanged(II)V

    .line 6832
    return-void
.end method
