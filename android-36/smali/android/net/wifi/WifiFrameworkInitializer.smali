.class public Landroid/net/wifi/WifiFrameworkInitializer;
.super Ljava/lang/Object;
.source "WifiFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/net/wifi/WifiManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_e
    invoke-static {p1}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    .line 59
    .local v0, "service":Landroid/net/wifi/IWifiManager;
    new-instance v1, Landroid/net/wifi/WifiManager;

    invoke-direct {v1, p0, v0}, Landroid/net/wifi/WifiManager;-><init>(Landroid/content/Context;Landroid/net/wifi/IWifiManager;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$1(Landroid/content/Context;Landroid/os/IBinder;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_e
    invoke-static {p1}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pManager;

    move-result-object v0

    .line 71
    .local v0, "service":Landroid/net/wifi/p2p/IWifiP2pManager;
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct {v1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;-><init>(Landroid/net/wifi/p2p/IWifiP2pManager;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$2(Landroid/content/Context;Landroid/os/IBinder;)Landroid/net/wifi/aware/WifiAwareManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.aware"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_e
    invoke-static {p1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareManager;

    move-result-object v0

    .line 83
    .local v0, "service":Landroid/net/wifi/aware/IWifiAwareManager;
    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager;

    invoke-direct {v1, p0, v0}, Landroid/net/wifi/aware/WifiAwareManager;-><init>(Landroid/content/Context;Landroid/net/wifi/aware/IWifiAwareManager;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$3(Landroid/content/Context;Landroid/os/IBinder;)Landroid/net/wifi/WifiScanner;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_e
    invoke-static {p1}, Landroid/net/wifi/IWifiScanner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScanner;

    move-result-object v0

    .line 95
    .local v0, "service":Landroid/net/wifi/IWifiScanner;
    new-instance v1, Landroid/net/wifi/WifiScanner;

    invoke-direct {v1, p0, v0}, Landroid/net/wifi/WifiScanner;-><init>(Landroid/content/Context;Landroid/net/wifi/IWifiScanner;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$4(Landroid/content/Context;Landroid/os/IBinder;)Landroid/net/wifi/rtt/WifiRttManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_e
    invoke-static {p1}, Landroid/net/wifi/rtt/IWifiRttManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/rtt/IWifiRttManager;

    move-result-object v0

    .line 107
    .local v0, "service":Landroid/net/wifi/rtt/IWifiRttManager;
    new-instance v1, Landroid/net/wifi/rtt/WifiRttManager;

    invoke-direct {v1, p0, v0}, Landroid/net/wifi/rtt/WifiRttManager;-><init>(Landroid/content/Context;Landroid/net/wifi/rtt/IWifiRttManager;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$5(Landroid/content/Context;)Landroid/net/wifi/RttManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_e
    const-class v0, Landroid/net/wifi/rtt/WifiRttManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/rtt/WifiRttManager;

    .line 119
    .local v0, "wifiRttManager":Landroid/net/wifi/rtt/WifiRttManager;
    new-instance v1, Landroid/net/wifi/RttManager;

    invoke-direct {v1, p0, v0}, Landroid/net/wifi/RttManager;-><init>(Landroid/content/Context;Landroid/net/wifi/rtt/WifiRttManager;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$6(Landroid/content/Context;Landroid/os/IBinder;)Landroid/net/wifi/usd/UsdManager;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "bool"

    const-string v3, "android"

    const-string v4, "config_deviceSupportsWifiUsd"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 131
    :cond_1a
    invoke-static {p1}, Landroid/net/wifi/usd/IUsdManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/usd/IUsdManager;

    move-result-object v0

    .line 132
    .local v0, "service":Landroid/net/wifi/usd/IUsdManager;
    new-instance v1, Landroid/net/wifi/usd/UsdManager;

    invoke-direct {v1, p0, v0}, Landroid/net/wifi/usd/UsdManager;-><init>(Landroid/content/Context;Landroid/net/wifi/usd/IUsdManager;)V

    return-object v1
.end method

.method public static whitelist registerServiceWrappers()V
    .registers 3

    .line 50
    const-class v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/net/wifi/WifiFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/wifi/WifiFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "wifi"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 62
    const-class v0, Landroid/net/wifi/p2p/WifiP2pManager;

    new-instance v1, Landroid/net/wifi/WifiFrameworkInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/net/wifi/WifiFrameworkInitializer$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "wifip2p"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 74
    const-class v0, Landroid/net/wifi/aware/WifiAwareManager;

    new-instance v1, Landroid/net/wifi/WifiFrameworkInitializer$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/net/wifi/WifiFrameworkInitializer$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "wifiaware"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 86
    const-class v0, Landroid/net/wifi/WifiScanner;

    new-instance v1, Landroid/net/wifi/WifiFrameworkInitializer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/net/wifi/WifiFrameworkInitializer$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "wifiscanner"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 98
    const-class v0, Landroid/net/wifi/rtt/WifiRttManager;

    new-instance v1, Landroid/net/wifi/WifiFrameworkInitializer$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/net/wifi/WifiFrameworkInitializer$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "wifirtt"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 110
    const-class v0, Landroid/net/wifi/RttManager;

    new-instance v1, Landroid/net/wifi/WifiFrameworkInitializer$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/net/wifi/WifiFrameworkInitializer$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, "rttmanager"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 122
    invoke-static {}, Lcom/android/wifi/x/android/net/wifi/flags/Flags;->usd()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 123
    const-class v0, Landroid/net/wifi/usd/UsdManager;

    new-instance v1, Landroid/net/wifi/WifiFrameworkInitializer$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/net/wifi/WifiFrameworkInitializer$$ExternalSyntheticLambda6;-><init>()V

    const-string v2, "wifi_usd"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 136
    :cond_60
    return-void
.end method
