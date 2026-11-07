.class public Landroid/net/vcn/IVcnManagementService$Default;
.super Ljava/lang/Object;
.source "IVcnManagementService.java"

# interfaces
.implements Landroid/net/vcn/IVcnManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/IVcnManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist clearVcnConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 3
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p2, "opPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist getConfiguredSubscriptionGroups(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "opPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerVcnStatusCallback(Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/net/vcn/IVcnStatusCallback;
    .param p3, "opPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist setVcnConfig(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Ljava/lang/String;)V
    .registers 4
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p2, "config"    # Landroid/net/vcn/VcnConfig;
    .param p3, "opPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist unregisterVcnStatusCallback(Landroid/net/vcn/IVcnStatusCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/vcn/IVcnStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method
