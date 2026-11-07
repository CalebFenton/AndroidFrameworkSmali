.class public Landroid/net/TestNetworkManager;
.super Ljava/lang/Object;
.source "TestNetworkManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/TestNetworkManager$TestInterfaceRequest;
    }
.end annotation


# static fields
.field private static final blacklist BRING_UP:Z = true

.field private static final blacklist CARRIER_UP:Z = true

.field public static final blacklist CLAT_INTERFACE_PREFIX:Ljava/lang/String; = "v4-"

.field private static final blacklist NO_ADDRS:[Landroid/net/LinkAddress;

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist TAP:Z = false

.field public static final blacklist TEST_TAP_PREFIX:Ljava/lang/String; = "testtap"

.field public static final blacklist TEST_TUN_PREFIX:Ljava/lang/String; = "testtun"

.field private static final blacklist TUN:Z = true

.field private static final blacklist USE_IPV6_PROV_DELAY:Z = false


# instance fields
.field private final blacklist mService:Landroid/net/connectivity/android/net/ITestNetworkManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    const-class v0, Landroid/net/TestNetworkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/TestNetworkManager;->TAG:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/LinkAddress;

    sput-object v0, Landroid/net/TestNetworkManager;->NO_ADDRS:[Landroid/net/LinkAddress;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/android/net/ITestNetworkManager;)V
    .registers 3
    .param p1, "service"    # Landroid/net/connectivity/android/net/ITestNetworkManager;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "missing ITestNetworkManager"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/android/net/ITestNetworkManager;

    iput-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/connectivity/android/net/ITestNetworkManager;

    .line 71
    return-void
.end method

.method private blacklist setupTestNetwork(Ljava/lang/String;Landroid/net/LinkProperties;Z[ILandroid/os/IBinder;)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "isMetered"    # Z
    .param p4, "administratorUids"    # [I
    .param p5, "binder"    # Landroid/os/IBinder;

    .line 96
    :try_start_0
    iget-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/connectivity/android/net/ITestNetworkManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_f

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "lp":Landroid/net/LinkProperties;
    .end local p3    # "isMetered":Z
    .end local p4    # "administratorUids":[I
    .end local p5    # "binder":Landroid/os/IBinder;
    .local v1, "iface":Ljava/lang/String;
    .local v2, "lp":Landroid/net/LinkProperties;
    .local v3, "isMetered":Z
    .local v4, "administratorUids":[I
    .local v5, "binder":Landroid/os/IBinder;
    :try_start_7
    invoke-interface/range {v0 .. v5}, Landroid/net/connectivity/android/net/ITestNetworkManager;->setupTestNetwork(Ljava/lang/String;Landroid/net/LinkProperties;Z[ILandroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 99
    nop

    .line 100
    return-void

    .line 97
    :catch_c
    move-exception v0

    move-object p1, v0

    goto :goto_16

    .end local v1    # "iface":Ljava/lang/String;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "isMetered":Z
    .end local v4    # "administratorUids":[I
    .end local v5    # "binder":Landroid/os/IBinder;
    .restart local p1    # "iface":Ljava/lang/String;
    .restart local p2    # "lp":Landroid/net/LinkProperties;
    .restart local p3    # "isMetered":Z
    .restart local p4    # "administratorUids":[I
    .restart local p5    # "binder":Landroid/os/IBinder;
    :catch_f
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object p1, v0

    .line 98
    .end local p2    # "lp":Landroid/net/LinkProperties;
    .end local p3    # "isMetered":Z
    .end local p4    # "administratorUids":[I
    .end local p5    # "binder":Landroid/os/IBinder;
    .restart local v1    # "iface":Ljava/lang/String;
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    .restart local v3    # "isMetered":Z
    .restart local v4    # "administratorUids":[I
    .restart local v5    # "binder":Landroid/os/IBinder;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_16
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method


# virtual methods
.method public blacklist createTapInterface()Landroid/net/TestNetworkInterface;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 193
    :try_start_0
    iget-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/connectivity/android/net/ITestNetworkManager;

    sget-object v5, Landroid/net/TestNetworkManager;->NO_ADDRS:[Landroid/net/LinkAddress;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/net/connectivity/android/net/ITestNetworkManager;->createInterface(ZZZZ[Landroid/net/LinkAddress;Ljava/lang/String;)Landroid/net/TestNetworkInterface;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 195
    :catch_e
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist createTapInterface(ZLjava/lang/String;)Landroid/net/TestNetworkInterface;
    .registers 10
    .param p1, "bringUp"    # Z
    .param p2, "iface"    # Ljava/lang/String;

    .line 216
    :try_start_0
    iget-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/connectivity/android/net/ITestNetworkManager;

    sget-object v5, Landroid/net/TestNetworkManager;->NO_ADDRS:[Landroid/net/LinkAddress;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_11

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    move v3, p1

    move-object v6, p2

    .end local p1    # "bringUp":Z
    .end local p2    # "iface":Ljava/lang/String;
    .local v3, "bringUp":Z
    .local v6, "iface":Ljava/lang/String;
    :try_start_9
    invoke-interface/range {v0 .. v6}, Landroid/net/connectivity/android/net/ITestNetworkManager;->createInterface(ZZZZ[Landroid/net/LinkAddress;Ljava/lang/String;)Landroid/net/TestNetworkInterface;

    move-result-object p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object p1

    .line 218
    :catch_e
    move-exception v0

    move-object p1, v0

    goto :goto_15

    .end local v3    # "bringUp":Z
    .end local v6    # "iface":Ljava/lang/String;
    .restart local p1    # "bringUp":Z
    .restart local p2    # "iface":Ljava/lang/String;
    :catch_11
    move-exception v0

    move v3, p1

    move-object v6, p2

    move-object p1, v0

    .line 219
    .end local p2    # "iface":Ljava/lang/String;
    .restart local v3    # "bringUp":Z
    .restart local v6    # "iface":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_15
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist createTapInterface(ZZZ)Landroid/net/TestNetworkInterface;
    .registers 11
    .param p1, "carrierUp"    # Z
    .param p2, "bringUp"    # Z
    .param p3, "disableIpv6ProvisioningDelay"    # Z

    .line 238
    :try_start_0
    iget-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/connectivity/android/net/ITestNetworkManager;

    sget-object v5, Landroid/net/TestNetworkManager;->NO_ADDRS:[Landroid/net/LinkAddress;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_11

    const/4 v6, 0x0

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "carrierUp":Z
    .end local p2    # "bringUp":Z
    .end local p3    # "disableIpv6ProvisioningDelay":Z
    .local v2, "carrierUp":Z
    .local v3, "bringUp":Z
    .local v4, "disableIpv6ProvisioningDelay":Z
    :try_start_9
    invoke-interface/range {v0 .. v6}, Landroid/net/connectivity/android/net/ITestNetworkManager;->createInterface(ZZZZ[Landroid/net/LinkAddress;Ljava/lang/String;)Landroid/net/TestNetworkInterface;

    move-result-object p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object p1

    .line 240
    :catch_e
    move-exception v0

    move-object p1, v0

    goto :goto_16

    .end local v2    # "carrierUp":Z
    .end local v3    # "bringUp":Z
    .end local v4    # "disableIpv6ProvisioningDelay":Z
    .restart local p1    # "carrierUp":Z
    .restart local p2    # "bringUp":Z
    .restart local p3    # "disableIpv6ProvisioningDelay":Z
    :catch_11
    move-exception v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object p1, v0

    .line 241
    .end local p2    # "bringUp":Z
    .end local p3    # "disableIpv6ProvisioningDelay":Z
    .restart local v2    # "carrierUp":Z
    .restart local v3    # "bringUp":Z
    .restart local v4    # "disableIpv6ProvisioningDelay":Z
    .local p1, "e":Landroid/os/RemoteException;
    :goto_16
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist createTestInterface(Landroid/net/TestNetworkManager$TestInterfaceRequest;)Landroid/net/TestNetworkInterface;
    .registers 9
    .param p1, "request"    # Landroid/net/TestNetworkManager$TestInterfaceRequest;

    .line 362
    :try_start_0
    iget-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/connectivity/android/net/ITestNetworkManager;

    iget-boolean v1, p1, Landroid/net/TestNetworkManager$TestInterfaceRequest;->isTun:Z

    iget-boolean v2, p1, Landroid/net/TestNetworkManager$TestInterfaceRequest;->hasCarrier:Z

    iget-boolean v3, p1, Landroid/net/TestNetworkManager$TestInterfaceRequest;->bringUp:Z

    iget-boolean v4, p1, Landroid/net/TestNetworkManager$TestInterfaceRequest;->disableIpv6ProvDelay:Z

    iget-object v5, p1, Landroid/net/TestNetworkManager$TestInterfaceRequest;->linkAddresses:[Landroid/net/LinkAddress;

    iget-object v6, p1, Landroid/net/TestNetworkManager$TestInterfaceRequest;->ifname:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Landroid/net/connectivity/android/net/ITestNetworkManager;->createInterface(ZZZZ[Landroid/net/LinkAddress;Ljava/lang/String;)Landroid/net/TestNetworkInterface;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 364
    :catch_13
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist createTunInterface(Ljava/util/Collection;)Landroid/net/TestNetworkInterface;
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/LinkAddress;",
            ">;)",
            "Landroid/net/TestNetworkInterface;"
        }
    .end annotation

    .line 173
    .local p1, "linkAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/LinkAddress;

    .line 174
    .local v0, "arr":[Landroid/net/LinkAddress;
    iget-object v1, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/connectivity/android/net/ITestNetworkManager;

    .line 175
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, [Landroid/net/LinkAddress;

    .line 174
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroid/net/connectivity/android/net/ITestNetworkManager;->createInterface(ZZZZ[Landroid/net/LinkAddress;Ljava/lang/String;)Landroid/net/TestNetworkInterface;

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v1

    .line 176
    .end local v0    # "arr":[Landroid/net/LinkAddress;
    :catch_19
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist createTunInterface([Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;
    .registers 3
    .param p1, "linkAddrs"    # [Landroid/net/LinkAddress;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/TestNetworkManager;->createTunInterface(Ljava/util/Collection;)Landroid/net/TestNetworkInterface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setCarrierEnabled(Landroid/net/TestNetworkInterface;Z)V
    .registers 5
    .param p1, "iface"    # Landroid/net/TestNetworkInterface;
    .param p2, "enabled"    # Z

    .line 257
    :try_start_0
    iget-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/connectivity/android/net/ITestNetworkManager;

    invoke-interface {v0, p1, p2}, Landroid/net/connectivity/android/net/ITestNetworkManager;->setCarrierEnabled(Landroid/net/TestNetworkInterface;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 260
    nop

    .line 261
    return-void

    .line 258
    :catch_7
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setupTestNetwork(Landroid/net/LinkProperties;ZLandroid/os/IBinder;)V
    .registers 11
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "isMetered"    # Z
    .param p3, "binder"    # Landroid/os/IBinder;

    .line 114
    const-string v0, "Invalid LinkProperties"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    new-array v5, v0, [I

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    .end local p1    # "lp":Landroid/net/LinkProperties;
    .end local p2    # "isMetered":Z
    .end local p3    # "binder":Landroid/os/IBinder;
    .local v3, "lp":Landroid/net/LinkProperties;
    .local v4, "isMetered":Z
    .local v6, "binder":Landroid/os/IBinder;
    invoke-direct/range {v1 .. v6}, Landroid/net/TestNetworkManager;->setupTestNetwork(Ljava/lang/String;Landroid/net/LinkProperties;Z[ILandroid/os/IBinder;)V

    .line 116
    return-void
.end method

.method public blacklist setupTestNetwork(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 128
    const/4 v0, 0x0

    new-array v5, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "binder":Landroid/os/IBinder;
    .local v2, "iface":Ljava/lang/String;
    .local v6, "binder":Landroid/os/IBinder;
    invoke-direct/range {v1 .. v6}, Landroid/net/TestNetworkManager;->setupTestNetwork(Ljava/lang/String;Landroid/net/LinkProperties;Z[ILandroid/os/IBinder;)V

    .line 129
    return-void
.end method

.method public blacklist setupTestNetwork(Ljava/lang/String;[ILandroid/os/IBinder;)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "administratorUids"    # [I
    .param p3, "binder"    # Landroid/os/IBinder;

    .line 142
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "administratorUids":[I
    .end local p3    # "binder":Landroid/os/IBinder;
    .local v1, "iface":Ljava/lang/String;
    .local v4, "administratorUids":[I
    .local v5, "binder":Landroid/os/IBinder;
    invoke-direct/range {v0 .. v5}, Landroid/net/TestNetworkManager;->setupTestNetwork(Ljava/lang/String;Landroid/net/LinkProperties;Z[ILandroid/os/IBinder;)V

    .line 143
    return-void
.end method

.method public blacklist teardownTestNetwork(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 83
    :try_start_0
    iget-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/connectivity/android/net/ITestNetworkManager;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-interface {v0, v1}, Landroid/net/connectivity/android/net/ITestNetworkManager;->teardownTestNetwork(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 86
    nop

    .line 87
    return-void

    .line 84
    :catch_9
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
