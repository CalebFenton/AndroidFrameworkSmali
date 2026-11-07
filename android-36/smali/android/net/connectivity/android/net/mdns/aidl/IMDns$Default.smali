.class public Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Default;
.super Ljava/lang/Object;
.source "IMDns.java"

# interfaces
.implements Landroid/net/connectivity/android/net/mdns/aidl/IMDns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/mdns/aidl/IMDns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist discover(Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 57
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getServiceAddress(Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist registerEventListener(Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist registerService(Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist resolve(Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist startDaemon()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist stopDaemon()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist stopOperation(I)V
    .registers 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist unregisterEventListener(Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method
