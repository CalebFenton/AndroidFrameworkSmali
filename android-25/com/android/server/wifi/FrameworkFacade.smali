.class public Lcom/android/server/wifi/FrameworkFacade;
.super Ljava/lang/Object;
.source "FrameworkFacade.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FrameworkFacade"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public checkUidPermission(Ljava/lang/String;I)I
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 87
    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getConfigWiFiDisableInECBM(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 97
    const-string/jumbo v1, "carrier_config"

    #@3
    .line 96
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/telephony/CarrierConfigManager;

    #@9
    .line 98
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v0, :cond_0

    #@b
    .line 99
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    #@e
    move-result-object v1

    #@f
    .line 100
    const-string/jumbo v2, "config_wifi_disable_in_ecbm"

    #@12
    .line 99
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 103
    :cond_0
    const/4 v1, 0x1

    #@18
    return v1
.end method

.method public getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # I

    #@0
    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getLongSetting(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # J

    #@0
    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p2, p3, p4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getRxPackets(Ljava/lang/String;)J
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 122
    invoke-static {p1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getTxPackets(Ljava/lang/String;)J
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 118
    invoke-static {p1}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public makeApConfigStore(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupManagerProxy"    # Lcom/android/server/wifi/BackupManagerProxy;

    #@0
    .prologue
    .line 114
    new-instance v0, Lcom/android/server/wifi/WifiApConfigStore;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/android/server/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;)V

    #@5
    return-object v0
.end method

.method public makeBaseLogger()Lcom/android/server/wifi/BaseWifiLogger;
    .locals 1

    #@0
    .prologue
    .line 48
    new-instance v0, Lcom/android/server/wifi/BaseWifiLogger;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/BaseWifiLogger;-><init>()V

    #@5
    return-object v0
.end method

.method public makeIpManager(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;)Landroid/net/ip/IpManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ip/IpManager$Callback;

    #@0
    .prologue
    .line 127
    new-instance v0, Landroid/net/ip/IpManager;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/net/ip/IpManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;)V

    #@5
    return-object v0
.end method

.method public makeRealLogger(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/BuildProperties;)Lcom/android/server/wifi/BaseWifiLogger;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p4, "buildProperties"    # Lcom/android/server/wifi/BuildProperties;

    #@0
    .prologue
    .line 54
    new-instance v0, Lcom/android/server/wifi/WifiLogger;

    #@2
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/wifi/WifiLogger;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/BuildProperties;)V

    #@5
    return-object v0
.end method

.method public makeSoftApManager(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Landroid/os/INetworkManagementService;Landroid/net/ConnectivityManager;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wifi/SoftApManager$Listener;)Lcom/android/server/wifi/SoftApManager;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p4, "nmService"    # Landroid/os/INetworkManagementService;
    .param p5, "cm"    # Landroid/net/ConnectivityManager;
    .param p6, "countryCode"    # Ljava/lang/String;
    .param p8, "listener"    # Lcom/android/server/wifi/SoftApManager$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/android/server/wifi/WifiNative;",
            "Landroid/os/INetworkManagementService;",
            "Landroid/net/ConnectivityManager;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/wifi/SoftApManager$Listener;",
            ")",
            "Lcom/android/server/wifi/SoftApManager;"
        }
    .end annotation

    #@0
    .prologue
    .line 147
    .local p7, "allowed2GChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/server/wifi/SoftApManager;

    #@2
    move-object v1, p2

    #@3
    move-object v2, p3

    #@4
    move-object v3, p4

    #@5
    move-object v4, p6

    #@6
    move-object v5, p7

    #@7
    move-object v6, p8

    #@8
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/SoftApManager;-><init>(Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Landroid/os/INetworkManagementService;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wifi/SoftApManager$Listener;)V

    #@b
    return-object v0
.end method

.method public makeSupplicantStateTracker(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Landroid/os/Handler;)Lcom/android/server/wifi/SupplicantStateTracker;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 92
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStateTracker;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Landroid/os/Handler;)V

    #@5
    return-object v0
.end method

.method public makeWifiConfigManager(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/Clock;Landroid/os/UserManager;Landroid/security/KeyStore;)Lcom/android/server/wifi/WifiConfigManager;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "frameworkFacade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;
    .param p5, "userManager"    # Landroid/os/UserManager;
    .param p6, "keyStore"    # Landroid/security/KeyStore;

    #@0
    .prologue
    .line 166
    new-instance v0, Lcom/android/server/wifi/WifiConfigManager;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    move-object v6, p6

    #@8
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/WifiConfigManager;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/Clock;Landroid/os/UserManager;Landroid/security/KeyStore;)V

    #@b
    return-object v0
.end method

.method public makeWifiScanner(Landroid/content/Context;Landroid/os/Looper;)Landroid/net/wifi/WifiScanner;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 82
    new-instance v0, Landroid/net/wifi/WifiScanner;

    #@2
    .line 83
    const-string/jumbo v1, "wifiscanner"

    #@5
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@8
    move-result-object v1

    #@9
    .line 82
    invoke-static {v1}, Landroid/net/wifi/IWifiScanner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScanner;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, p1, v1, p2}, Landroid/net/wifi/WifiScanner;-><init>(Landroid/content/Context;Landroid/net/wifi/IWifiScanner;Landroid/os/Looper;)V

    #@10
    return-object v0
.end method

.method public setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # I

    #@0
    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public setStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method
