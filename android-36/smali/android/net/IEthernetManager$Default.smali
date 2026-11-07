.class public Landroid/net/IEthernetManager$Default;
.super Ljava/lang/Object;
.source "IEthernetManager.java"

# interfaces
.implements Landroid/net/IEthernetManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IEthernetManager;
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
.method public blacklist addListener(Landroid/net/IEthernetServiceListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/IEthernetServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist disableInterface(Ljava/lang/String;Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist enableInterface(Ljava/lang/String;Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist getAvailableInterfaces()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isAvailable(Ljava/lang/String;)Z
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist releaseTetheredInterface(Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist removeListener(Landroid/net/IEthernetServiceListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/IEthernetServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist requestTetheredInterface(Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist setConfiguration(Ljava/lang/String;Landroid/net/IpConfiguration;)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/IpConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist setEthernetEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist setIncludeTestInterfaces(Z)V
    .registers 2
    .param p1, "include"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist updateConfiguration(Ljava/lang/String;Landroid/net/EthernetNetworkUpdateRequest;Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/net/EthernetNetworkUpdateRequest;
    .param p3, "listener"    # Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method
