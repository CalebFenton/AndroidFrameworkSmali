.class public Landroid/net/wifi/ISoftApCallback$Default;
.super Ljava/lang/Object;
.source "ISoftApCallback.java"

# interfaces
.implements Landroid/net/wifi/ISoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ISoftApCallback;
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

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V
    .registers 3
    .param p1, "client"    # Landroid/net/wifi/WifiClient;
    .param p2, "blockedReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist onCapabilityChanged(Landroid/net/wifi/SoftApCapability;)V
    .registers 2
    .param p1, "capability"    # Landroid/net/wifi/SoftApCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist onClientsDisconnected(Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    .local p2, "clients":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiClient;>;"
    return-void
.end method

.method public blacklist onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;ZZ)V
    .registers 5
    .param p3, "isBridged"    # Z
    .param p4, "isRegistration"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/SoftApInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;>;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    .local p1, "infos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/SoftApInfo;>;"
    .local p2, "clients":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/net/wifi/WifiClient;>;>;"
    return-void
.end method

.method public blacklist onStateChanged(Landroid/net/wifi/SoftApState;)V
    .registers 2
    .param p1, "state"    # Landroid/net/wifi/SoftApState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method
