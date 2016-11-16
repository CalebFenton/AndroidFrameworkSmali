.class public Lcom/android/server/wifi/SoftApManager;
.super Ljava/lang/Object;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SoftApManager$Listener;,
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
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

.field private final mCountryCode:Ljava/lang/String;

.field private final mInterfaceName:Ljava/lang/String;

.field private final mListener:Lcom/android/server/wifi/SoftApManager$Listener;

.field private final mNmService:Landroid/os/INetworkManagementService;

.field private final mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiConfiguration;)I
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

.method static synthetic -wrap1(Lcom/android/server/wifi/SoftApManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->stopSoftAp()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/SoftApManager;II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SoftApManager;->updateApState(II)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Landroid/os/INetworkManagementService;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wifi/SoftApManager$Listener;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "nmService"    # Landroid/os/INetworkManagementService;
    .param p4, "countryCode"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/android/server/wifi/SoftApManager$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/android/server/wifi/WifiNative;",
            "Landroid/os/INetworkManagementService;",
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
    .line 70
    .local p5, "allowed2GChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    new-instance v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@5
    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;-><init>(Lcom/android/server/wifi/SoftApManager;Landroid/os/Looper;)V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@a
    .line 78
    iput-object p3, p0, Lcom/android/server/wifi/SoftApManager;->mNmService:Landroid/os/INetworkManagementService;

    #@c
    .line 79
    iput-object p2, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@e
    .line 80
    iput-object p4, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    #@10
    .line 81
    iput-object p5, p0, Lcom/android/server/wifi/SoftApManager;->mAllowed2GChannels:Ljava/util/ArrayList;

    #@12
    .line 82
    iput-object p6, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    #@14
    .line 84
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@16
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getInterfaceName()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mInterfaceName:Ljava/lang/String;

    #@1c
    .line 75
    return-void
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
    .line 119
    if-nez p1, :cond_0

    #@4
    .line 120
    const-string/jumbo v3, "SoftApManager"

    #@7
    const-string/jumbo v4, "Unable to start soft AP without configuration"

    #@a
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 121
    return v6

    #@e
    .line 125
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    #@10
    invoke-direct {v1, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@13
    .line 128
    .local v1, "localConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@15
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    #@17
    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager;->mAllowed2GChannels:Ljava/util/ArrayList;

    #@19
    .line 127
    invoke-static {v3, v4, v5, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->updateApChannelConfig(Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Ljava/util/ArrayList;Landroid/net/wifi/WifiConfiguration;)I

    #@1c
    move-result v2

    #@1d
    .line 129
    .local v2, "result":I
    if-eqz v2, :cond_1

    #@1f
    .line 130
    const-string/jumbo v3, "SoftApManager"

    #@22
    const-string/jumbo v4, "Failed to update AP band and channel"

    #@25
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 131
    return v2

    #@29
    .line 135
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 140
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
    .line 141
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@3f
    const/4 v4, 0x1

    #@40
    if-ne v3, v4, :cond_2

    #@42
    .line 142
    const-string/jumbo v3, "SoftApManager"

    #@45
    const-string/jumbo v4, "Failed to set country code, required for setting up soft ap in 5GHz"

    #@48
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 144
    return v6

    #@4c
    .line 149
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
    .line 155
    const-string/jumbo v3, "SoftApManager"

    #@56
    const-string/jumbo v4, "Soft AP is started"

    #@59
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 157
    return v7

    #@5d
    .line 150
    :catch_0
    move-exception v0

    #@5e
    .line 151
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
    .line 152
    return v6
.end method

.method private stopSoftAp()V
    .locals 4

    #@0
    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mNmService:Landroid/os/INetworkManagementService;

    #@2
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mInterfaceName:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 170
    const-string/jumbo v1, "SoftApManager"

    #@a
    const-string/jumbo v2, "Soft AP is stopped"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 163
    return-void

    #@11
    .line 166
    :catch_0
    move-exception v0

    #@12
    .line 167
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
    .line 168
    return-void
.end method

.method private updateApState(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 109
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    #@6
    invoke-interface {v0, p1, p2}, Lcom/android/server/wifi/SoftApManager$Listener;->onStateChanged(II)V

    #@9
    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public start(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@6
    .line 91
    return-void
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(I)V

    #@6
    .line 98
    return-void
.end method
