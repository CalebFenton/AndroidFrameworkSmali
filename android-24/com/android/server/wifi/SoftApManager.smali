.class public Lcom/android/server/wifi/SoftApManager;
.super Ljava/lang/Object;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SoftApManager$Listener;,
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;,
        Lcom/android/server/wifi/SoftApManager$TetherStateChange;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoftApManager"


# instance fields
.field private final mAllowed2GChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mCountryCode:Ljava/lang/String;

.field private final mInterfaceName:Ljava/lang/String;

.field private final mListener:Lcom/android/server/wifi/SoftApManager$Listener;

.field private final mNmService:Landroid/os/INetworkManagementService;

.field private final mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

.field private mTetherInterfaceName:Ljava/lang/String;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/SoftApManager;Ljava/util/ArrayList;)Z
    .locals 1
    .param p1, "active"    # Ljava/util/ArrayList;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->isWifiTethered(Ljava/util/ArrayList;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/SoftApManager;Ljava/util/ArrayList;)Z
    .locals 1
    .param p1, "available"    # Ljava/util/ArrayList;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->startTethering(Ljava/util/ArrayList;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/SoftApManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->stopSoftAp()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/SoftApManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->stopTethering()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/SoftApManager;II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SoftApManager;->updateApState(II)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Landroid/os/INetworkManagementService;Landroid/net/ConnectivityManager;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wifi/SoftApManager$Listener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p4, "nmService"    # Landroid/os/INetworkManagementService;
    .param p5, "connectivityManager"    # Landroid/net/ConnectivityManager;
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
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 89
    .local p7, "allowed2GChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 97
    new-instance v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@5
    invoke-direct {v0, p0, p2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;-><init>(Lcom/android/server/wifi/SoftApManager;Landroid/os/Looper;)V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@a
    .line 99
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    #@c
    .line 100
    iput-object p4, p0, Lcom/android/server/wifi/SoftApManager;->mNmService:Landroid/os/INetworkManagementService;

    #@e
    .line 101
    iput-object p3, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@10
    .line 102
    iput-object p5, p0, Lcom/android/server/wifi/SoftApManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #@12
    .line 103
    iput-object p6, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    #@14
    .line 104
    iput-object p7, p0, Lcom/android/server/wifi/SoftApManager;->mAllowed2GChannels:Ljava/util/ArrayList;

    #@16
    .line 105
    iput-object p8, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    #@18
    .line 107
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@1a
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getInterfaceName()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mInterfaceName:Ljava/lang/String;

    #@20
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    #@22
    .line 111
    new-instance v1, Lcom/android/server/wifi/SoftApManager$1;

    #@24
    invoke-direct {v1, p0}, Lcom/android/server/wifi/SoftApManager$1;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    #@27
    .line 122
    new-instance v2, Landroid/content/IntentFilter;

    #@29
    const-string/jumbo v3, "android.net.conn.TETHER_STATE_CHANGED"

    #@2c
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@2f
    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@32
    .line 96
    return-void
.end method

.method private isWifiTethered(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    .line 269
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #@3
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    .line 270
    .local v3, "wifiRegexs":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "intf$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_2

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/String;

    #@17
    .line 271
    .local v0, "intf":Ljava/lang/String;
    array-length v6, v3

    #@18
    move v4, v5

    #@19
    :goto_0
    if-ge v4, v6, :cond_0

    #@1b
    aget-object v2, v3, v4

    #@1d
    .line 272
    .local v2, "regex":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@20
    move-result v7

    #@21
    if-eqz v7, :cond_1

    #@23
    .line 273
    const/4 v4, 0x1

    #@24
    return v4

    #@25
    .line 271
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@27
    goto :goto_0

    #@28
    .line 278
    .end local v0    # "intf":Ljava/lang/String;
    .end local v2    # "regex":Ljava/lang/String;
    :cond_2
    return v5
.end method

.method private startSoftAp(Landroid/net/wifi/WifiConfiguration;)I
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x2

    #@2
    .line 157
    if-nez p1, :cond_0

    #@4
    .line 158
    const-string/jumbo v3, "SoftApManager"

    #@7
    const-string/jumbo v4, "Unable to start soft AP without configuration"

    #@a
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 159
    return v6

    #@e
    .line 163
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    #@10
    invoke-direct {v1, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@13
    .line 166
    .local v1, "localConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@15
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    #@17
    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager;->mAllowed2GChannels:Ljava/util/ArrayList;

    #@19
    .line 165
    invoke-static {v3, v4, v5, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->updateApChannelConfig(Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Ljava/util/ArrayList;Landroid/net/wifi/WifiConfiguration;)I

    #@1c
    move-result v2

    #@1d
    .line 167
    .local v2, "result":I
    if-eqz v2, :cond_1

    #@1f
    .line 168
    const-string/jumbo v3, "SoftApManager"

    #@22
    const-string/jumbo v4, "Failed to update AP band and channel"

    #@25
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 169
    return v2

    #@29
    .line 173
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 178
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2f
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    #@31
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->setCountryCodeHal(Ljava/lang/String;)Z

    #@3a
    move-result v3

    #@3b
    if-nez v3, :cond_2

    #@3d
    .line 179
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@3f
    const/4 v4, 0x1

    #@40
    if-ne v3, v4, :cond_2

    #@42
    .line 180
    const-string/jumbo v3, "SoftApManager"

    #@45
    const-string/jumbo v4, "Failed to set country code, required for setting up soft ap in 5GHz"

    #@48
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 182
    return v6

    #@4c
    .line 187
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mNmService:Landroid/os/INetworkManagementService;

    #@4e
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mInterfaceName:Ljava/lang/String;

    #@50
    invoke-interface {v3, v1, v4}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@53
    .line 193
    const-string/jumbo v3, "SoftApManager"

    #@56
    const-string/jumbo v4, "Soft AP is started"

    #@59
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 195
    return v7

    #@5d
    .line 188
    :catch_0
    move-exception v0

    #@5e
    .line 189
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SoftApManager"

    #@61
    new-instance v4, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v5, "Exception in starting soft AP: "

    #@69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 190
    return v6
.end method

.method private startTethering(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    #@1
    .line 212
    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #@3
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    #@6
    move-result-object v5

    #@7
    .line 214
    .local v5, "wifiRegexs":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v3

    #@b
    .local v3, "intf$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v6

    #@f
    if-eqz v6, :cond_4

    #@11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/String;

    #@17
    .line 215
    .local v2, "intf":Ljava/lang/String;
    array-length v8, v5

    #@18
    move v6, v7

    #@19
    :goto_0
    if-ge v6, v8, :cond_0

    #@1b
    aget-object v4, v5, v6

    #@1d
    .line 216
    .local v4, "regex":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@20
    move-result v9

    #@21
    if-eqz v9, :cond_3

    #@23
    .line 219
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager;->mNmService:Landroid/os/INetworkManagementService;

    #@25
    invoke-interface {v6, v2}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@28
    move-result-object v1

    #@29
    .line 220
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    if-eqz v1, :cond_1

    #@2b
    .line 222
    new-instance v6, Landroid/net/LinkAddress;

    #@2d
    .line 223
    const-string/jumbo v8, "192.168.43.1"

    #@30
    invoke-static {v8}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@33
    move-result-object v8

    #@34
    const/16 v9, 0x18

    #@36
    .line 222
    invoke-direct {v6, v8, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@39
    invoke-virtual {v1, v6}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    #@3c
    .line 224
    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    #@3f
    .line 226
    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager;->mNmService:Landroid/os/INetworkManagementService;

    #@41
    invoke-interface {v6, v2, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 233
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #@46
    invoke-virtual {v6, v2}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    #@49
    move-result v6

    #@4a
    if-eqz v6, :cond_2

    #@4c
    .line 235
    const-string/jumbo v6, "SoftApManager"

    #@4f
    new-instance v8, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v9, "Error tethering on "

    #@57
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v8

    #@5b
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v8

    #@5f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v8

    #@63
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 236
    return v7

    #@67
    .line 228
    .end local v1    # "ifcg":Landroid/net/InterfaceConfiguration;
    :catch_0
    move-exception v0

    #@68
    .line 229
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SoftApManager"

    #@6b
    new-instance v8, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v9, "Error configuring interface "

    #@73
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v8

    #@77
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v8

    #@7b
    const-string/jumbo v9, ", :"

    #@7e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v8

    #@82
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v8

    #@86
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v8

    #@8a
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    .line 230
    return v7

    #@8e
    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_2
    iput-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mTetherInterfaceName:Ljava/lang/String;

    #@90
    .line 239
    const/4 v6, 0x1

    #@91
    return v6

    #@92
    .line 215
    .end local v1    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    #@94
    goto :goto_0

    #@95
    .line 244
    .end local v2    # "intf":Ljava/lang/String;
    .end local v4    # "regex":Ljava/lang/String;
    :cond_4
    return v7
.end method

.method private stopSoftAp()V
    .locals 4

    #@0
    .prologue
    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mNmService:Landroid/os/INetworkManagementService;

    #@2
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mInterfaceName:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 208
    const-string/jumbo v1, "SoftApManager"

    #@a
    const-string/jumbo v2, "Soft AP is stopped"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 201
    return-void

    #@11
    .line 204
    :catch_0
    move-exception v0

    #@12
    .line 205
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SoftApManager"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Exception in stopping soft AP: "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 206
    return-void
.end method

.method private stopTethering()V
    .locals 5

    #@0
    .prologue
    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mNmService:Landroid/os/INetworkManagementService;

    #@2
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mTetherInterfaceName:Ljava/lang/String;

    #@4
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@7
    move-result-object v1

    #@8
    .line 252
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    if-eqz v1, :cond_0

    #@a
    .line 254
    new-instance v2, Landroid/net/LinkAddress;

    #@c
    .line 255
    const-string/jumbo v3, "0.0.0.0"

    #@f
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@12
    move-result-object v3

    #@13
    const/4 v4, 0x0

    #@14
    .line 254
    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@17
    .line 253
    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    #@1a
    .line 256
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mNmService:Landroid/os/INetworkManagementService;

    #@1c
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mTetherInterfaceName:Ljava/lang/String;

    #@1e
    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 262
    .end local v1    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #@23
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mTetherInterfaceName:Ljava/lang/String;

    #@25
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 264
    const-string/jumbo v2, "SoftApManager"

    #@2e
    const-string/jumbo v3, "Untether initiate failed!"

    #@31
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 247
    :cond_1
    return-void

    #@35
    .line 258
    :catch_0
    move-exception v0

    #@36
    .line 259
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SoftApManager"

    #@39
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "Error resetting interface "

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mTetherInterfaceName:Ljava/lang/String;

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    const-string/jumbo v4, ", :"

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    goto :goto_0
.end method

.method private updateApState(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    #@6
    invoke-interface {v0, p1, p2}, Lcom/android/server/wifi/SoftApManager$Listener;->onStateChanged(II)V

    #@9
    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public start(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@6
    .line 129
    return-void
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(I)V

    #@6
    .line 136
    return-void
.end method
