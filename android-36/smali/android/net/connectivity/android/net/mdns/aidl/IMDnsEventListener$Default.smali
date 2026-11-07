.class public Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Default;
.super Ljava/lang/Object;
.source "IMDnsEventListener.java"

# interfaces
.implements Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;
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

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 42
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onGettingServiceAddressStatus(Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;)V
    .registers 2
    .param p1, "status"    # Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist onServiceDiscoveryStatus(Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;)V
    .registers 2
    .param p1, "status"    # Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist onServiceRegistrationStatus(Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;)V
    .registers 2
    .param p1, "status"    # Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist onServiceResolutionStatus(Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;)V
    .registers 2
    .param p1, "status"    # Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method
