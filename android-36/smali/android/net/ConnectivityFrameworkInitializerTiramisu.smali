.class public final Landroid/net/ConnectivityFrameworkInitializerTiramisu;
.super Ljava/lang/Object;
.source "ConnectivityFrameworkInitializerTiramisu.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/net/nsd/NsdManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 55
    invoke-static {p1}, Landroid/net/nsd/INsdManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/nsd/INsdManager;

    move-result-object v0

    .line 56
    .local v0, "service":Landroid/net/nsd/INsdManager;
    new-instance v1, Landroid/net/nsd/NsdManager;

    invoke-direct {v1, p0, v0}, Landroid/net/nsd/NsdManager;-><init>(Landroid/content/Context;Landroid/net/nsd/INsdManager;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$1(Landroid/content/Context;Landroid/os/IBinder;)Landroid/net/IpSecManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 64
    invoke-static {p1}, Landroid/net/IIpSecService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpSecService;

    move-result-object v0

    .line 65
    .local v0, "service":Landroid/net/IIpSecService;
    new-instance v1, Landroid/net/IpSecManager;

    invoke-direct {v1, p0, v0}, Landroid/net/IpSecManager;-><init>(Landroid/content/Context;Landroid/net/IIpSecService;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$2(Landroid/content/Context;Landroid/os/IBinder;)Landroid/app/usage/NetworkStatsManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 73
    nop

    .line 74
    invoke-static {p1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    .line 75
    .local v0, "service":Landroid/net/INetworkStatsService;
    new-instance v1, Landroid/app/usage/NetworkStatsManager;

    invoke-direct {v1, p0, v0}, Landroid/app/usage/NetworkStatsManager;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsService;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$3(Landroid/content/Context;Landroid/os/IBinder;)Landroid/net/EthernetManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 83
    invoke-static {p1}, Landroid/net/IEthernetManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetManager;

    move-result-object v0

    .line 84
    .local v0, "service":Landroid/net/IEthernetManager;
    new-instance v1, Landroid/net/EthernetManager;

    invoke-direct {v1, p0, v0}, Landroid/net/EthernetManager;-><init>(Landroid/content/Context;Landroid/net/IEthernetManager;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$4(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/nsd/MDnsManager;
    .registers 3
    .param p0, "serviceBinder"    # Landroid/os/IBinder;

    .line 94
    invoke-static {p0}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/mdns/aidl/IMDns;

    move-result-object v0

    .line 95
    .local v0, "service":Landroid/net/connectivity/android/net/mdns/aidl/IMDns;
    new-instance v1, Landroid/net/connectivity/android/net/nsd/MDnsManager;

    invoke-direct {v1, v0}, Landroid/net/connectivity/android/net/nsd/MDnsManager;-><init>(Landroid/net/connectivity/android/net/mdns/aidl/IMDns;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$5(Landroid/content/Context;Landroid/os/IBinder;)Landroid/net/thread/ThreadNetworkManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 104
    nop

    .line 105
    invoke-static {p1}, Landroid/net/connectivity/android/net/thread/IThreadNetworkManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IThreadNetworkManager;

    move-result-object v0

    .line 106
    .local v0, "managerService":Landroid/net/connectivity/android/net/thread/IThreadNetworkManager;
    new-instance v1, Landroid/net/thread/ThreadNetworkManager;

    invoke-direct {v1, p0, v0}, Landroid/net/thread/ThreadNetworkManager;-><init>(Landroid/content/Context;Landroid/net/connectivity/android/net/thread/IThreadNetworkManager;)V

    return-object v1
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 51
    const-class v0, Landroid/net/nsd/NsdManager;

    new-instance v1, Landroid/net/ConnectivityFrameworkInitializerTiramisu$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/ConnectivityFrameworkInitializerTiramisu$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "servicediscovery"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 60
    const-class v0, Landroid/net/IpSecManager;

    new-instance v1, Landroid/net/ConnectivityFrameworkInitializerTiramisu$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/net/ConnectivityFrameworkInitializerTiramisu$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "ipsec"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 69
    const-class v0, Landroid/app/usage/NetworkStatsManager;

    new-instance v1, Landroid/net/ConnectivityFrameworkInitializerTiramisu$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/net/ConnectivityFrameworkInitializerTiramisu$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "netstats"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 79
    const-class v0, Landroid/net/EthernetManager;

    new-instance v1, Landroid/net/ConnectivityFrameworkInitializerTiramisu$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/net/ConnectivityFrameworkInitializerTiramisu$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "ethernet"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 89
    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-nez v0, :cond_42

    .line 90
    const-class v0, Landroid/net/connectivity/android/net/nsd/MDnsManager;

    new-instance v1, Landroid/net/ConnectivityFrameworkInitializerTiramisu$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/net/ConnectivityFrameworkInitializerTiramisu$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "mdns"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V

    .line 100
    :cond_42
    const-class v0, Landroid/net/thread/ThreadNetworkManager;

    new-instance v1, Landroid/net/ConnectivityFrameworkInitializerTiramisu$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/net/ConnectivityFrameworkInitializerTiramisu$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, "thread_network"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 108
    return-void
.end method
