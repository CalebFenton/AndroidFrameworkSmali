.class public final Landroid/net/ConnectivityFrameworkInitializer;
.super Ljava/lang/Object;
.source "ConnectivityFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/net/ConnectivityManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 47
    invoke-static {p1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 48
    .local v0, "icm":Landroid/net/IConnectivityManager;
    new-instance v1, Landroid/net/ConnectivityManager;

    invoke-direct {v1, p0, v0}, Landroid/net/ConnectivityManager;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$1(Landroid/content/Context;)Landroid/net/ConnectivityDiagnosticsManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 58
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->createDiagnosticsManager()Landroid/net/ConnectivityDiagnosticsManager;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$2(Landroid/content/Context;)Landroid/net/TestNetworkManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 68
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->startOrGetTestNetworkManager()Landroid/net/TestNetworkManager;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$3(Landroid/content/Context;Landroid/os/IBinder;)Landroid/net/connectivity/android/net/DnsResolverServiceManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 75
    new-instance v0, Landroid/net/connectivity/android/net/DnsResolverServiceManager;

    invoke-direct {v0, p1}, Landroid/net/connectivity/android/net/DnsResolverServiceManager;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 43
    const-class v0, Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/ConnectivityFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/ConnectivityFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "connectivity"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 52
    const-class v0, Landroid/net/ConnectivityDiagnosticsManager;

    new-instance v1, Landroid/net/ConnectivityFrameworkInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/net/ConnectivityFrameworkInitializer$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "connectivity_diagnostics"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 62
    const-class v0, Landroid/net/TestNetworkManager;

    new-instance v1, Landroid/net/ConnectivityFrameworkInitializer$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/net/ConnectivityFrameworkInitializer$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "test_network"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 72
    const-class v0, Landroid/net/connectivity/android/net/DnsResolverServiceManager;

    new-instance v1, Landroid/net/ConnectivityFrameworkInitializer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/net/ConnectivityFrameworkInitializer$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "dnsresolver"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 77
    return-void
.end method
