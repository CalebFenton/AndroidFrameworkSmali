.class public Landroid/net/connectivity/android/net/ITestNetworkManager$Default;
.super Ljava/lang/Object;
.source "ITestNetworkManager.java"

# interfaces
.implements Landroid/net/connectivity/android/net/ITestNetworkManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/ITestNetworkManager;
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

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createInterface(ZZZZ[Landroid/net/LinkAddress;Ljava/lang/String;)Landroid/net/TestNetworkInterface;
    .registers 8
    .param p1, "isTun"    # Z
    .param p2, "hasCarrier"    # Z
    .param p3, "bringUp"    # Z
    .param p4, "disableIpv6ProvisioningDelay"    # Z
    .param p5, "addrs"    # [Landroid/net/LinkAddress;
    .param p6, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setCarrierEnabled(Landroid/net/TestNetworkInterface;Z)V
    .registers 3
    .param p1, "iface"    # Landroid/net/TestNetworkInterface;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist setupTestNetwork(Ljava/lang/String;Landroid/net/LinkProperties;Z[ILandroid/os/IBinder;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "isMetered"    # Z
    .param p4, "administratorUids"    # [I
    .param p5, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist teardownTestNetwork(I)V
    .registers 2
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method
