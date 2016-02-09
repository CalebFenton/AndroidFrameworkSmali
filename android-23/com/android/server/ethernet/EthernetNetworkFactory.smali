.class Lcom/android/server/ethernet/EthernetNetworkFactory;
.super Ljava/lang/Object;
.source "EthernetNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;,
        Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NETWORK_SCORE:I = 0x46

.field private static final NETWORK_TYPE:Ljava/lang/String; = "Ethernet"

.field private static final TAG:Ljava/lang/String; = "EthernetNetworkFactory"

.field private static mIface:Ljava/lang/String;

.field private static mIfaceMatch:Ljava/lang/String;

.field private static mLinkUp:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEthernetManager:Landroid/net/EthernetManager;

.field private mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

.field private mHwAddr:Ljava/lang/String;

.field private mInterfaceObserver:Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/IEthernetServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;


# direct methods
.method static synthetic -get0(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/EthernetManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mEthernetManager:Landroid/net/EthernetManager;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/ethernet/EthernetNetworkFactory;)Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/ethernet/EthernetNetworkFactory;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mHwAddr:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get4()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/LinkProperties;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/os/INetworkManagementService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkAgent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkCapabilities;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/ethernet/EthernetNetworkFactory;Ljava/lang/String;)Z
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->maybeTrackInterface(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/StaticIpConfiguration;)Z
    .locals 1
    .param p1, "staticConfig"    # Landroid/net/StaticIpConfiguration;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->setStaticIpAddress(Landroid/net/StaticIpConfiguration;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/ethernet/EthernetNetworkFactory;Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->stopTrackingInterface(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/ethernet/EthernetNetworkFactory;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->updateInterfaceState(Ljava/lang/String;Z)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 92
    const-string/jumbo v0, ""

    #@3
    sput-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIfaceMatch:Ljava/lang/String;

    #@5
    .line 98
    const-string/jumbo v0, ""

    #@8
    sput-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    #@a
    .line 70
    return-void
.end method

.method constructor <init>(Landroid/os/RemoteCallbackList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/IEthernetServiceListener;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 104
    .local p1, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/IEthernetServiceListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 105
    new-instance v0, Landroid/net/NetworkInfo;

    #@5
    const-string/jumbo v1, "Ethernet"

    #@8
    const-string/jumbo v2, ""

    #@b
    const/16 v3, 0x9

    #@d
    const/4 v4, 0x0

    #@e
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    #@11
    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@13
    .line 106
    new-instance v0, Landroid/net/LinkProperties;

    #@15
    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    #@1a
    .line 107
    invoke-direct {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->initNetworkCapabilities()V

    #@1d
    .line 108
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mListeners:Landroid/os/RemoteCallbackList;

    #@1f
    .line 104
    return-void
.end method

.method private initNetworkCapabilities()V
    .locals 3

    #@0
    .prologue
    const v2, 0x186a0

    #@3
    .line 423
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@5
    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@a
    .line 424
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@c
    const/4 v1, 0x3

    #@d
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    #@10
    .line 425
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@12
    const/16 v1, 0xc

    #@14
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@17
    .line 426
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@19
    const/16 v1, 0xd

    #@1b
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@1e
    .line 428
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@20
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    #@23
    .line 429
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@25
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    #@28
    .line 422
    return-void
.end method

.method private maybeTrackInterface(Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 197
    sget-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIfaceMatch:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->isTrackingInterface()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 198
    :cond_0
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 200
    :cond_1
    const-string/jumbo v0, "EthernetNetworkFactory"

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Started tracking interface "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 201
    invoke-direct {p0, p1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->setInterfaceUp(Ljava/lang/String;)V

    #@2d
    .line 202
    const/4 v0, 0x1

    #@2e
    return v0
.end method

.method private setInterfaceInfoLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "hwAddr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->isTrackingInterface()Z

    #@3
    move-result v4

    #@4
    .line 442
    .local v4, "oldAvailable":Z
    sput-object p1, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    #@6
    .line 443
    iput-object p2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mHwAddr:Ljava/lang/String;

    #@8
    .line 444
    invoke-virtual {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->isTrackingInterface()Z

    #@b
    move-result v0

    #@c
    .line 446
    .local v0, "available":Z
    if-eq v4, v0, :cond_1

    #@e
    .line 447
    iget-object v5, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mListeners:Landroid/os/RemoteCallbackList;

    #@10
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@13
    move-result v3

    #@14
    .line 448
    .local v3, "n":I
    const/4 v2, 0x0

    #@15
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@17
    .line 450
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mListeners:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@1c
    move-result-object v5

    #@1d
    check-cast v5, Landroid/net/IEthernetServiceListener;

    #@1f
    invoke-interface {v5, v0}, Landroid/net/IEthernetServiceListener;->onAvailabilityChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 448
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 455
    :cond_0
    iget-object v5, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mListeners:Landroid/os/RemoteCallbackList;

    #@27
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@2a
    .line 440
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1
    return-void

    #@2b
    .line 451
    .restart local v2    # "i":I
    .restart local v3    # "n":I
    :catch_0
    move-exception v1

    #@2c
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private setInterfaceUp(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 169
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    #@3
    .line 170
    iget-object v3, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    #@5
    invoke-interface {v3, p1}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V

    #@8
    .line 171
    const/4 v2, 0x0

    #@9
    .line 172
    .local v2, "hwAddr":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    #@b
    invoke-interface {v3, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@e
    move-result-object v0

    #@f
    .line 174
    .local v0, "config":Landroid/net/InterfaceConfiguration;
    if-nez v0, :cond_0

    #@11
    .line 175
    const-string/jumbo v3, "EthernetNetworkFactory"

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "Null iterface config for "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    const-string/jumbo v5, ". Bailing out."

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 176
    return-void

    #@33
    .line 179
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 180
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->isTrackingInterface()Z

    #@37
    move-result v3

    #@38
    if-nez v3, :cond_1

    #@3a
    .line 181
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-direct {p0, p1, v3}, Lcom/android/server/ethernet/EthernetNetworkFactory;->setInterfaceInfoLocked(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    .line 182
    iget-object v3, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@43
    const/4 v4, 0x1

    #@44
    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@47
    .line 183
    iget-object v3, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@49
    iget-object v4, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mHwAddr:Ljava/lang/String;

    #@4b
    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@4f
    .line 166
    .end local v0    # "config":Landroid/net/InterfaceConfiguration;
    .end local v2    # "hwAddr":Ljava/lang/String;
    :goto_1
    return-void

    #@50
    .line 185
    .restart local v0    # "config":Landroid/net/InterfaceConfiguration;
    .restart local v2    # "hwAddr":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string/jumbo v3, "EthernetNetworkFactory"

    #@53
    new-instance v4, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v5, "Interface unexpectedly changed from "

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    const-string/jumbo v5, " to "

    #@66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    sget-object v5, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    #@6c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v4

    #@74
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 186
    iget-object v3, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    #@79
    invoke-interface {v3, p1}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7c
    goto :goto_0

    #@7d
    .line 179
    :catchall_0
    move-exception v3

    #@7e
    :try_start_4
    monitor-exit p0

    #@7f
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@80
    .line 189
    .end local v0    # "config":Landroid/net/InterfaceConfiguration;
    .end local v2    # "hwAddr":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@81
    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "EthernetNetworkFactory"

    #@84
    new-instance v4, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v5, "Error upping interface "

    #@8c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    sget-object v5, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    #@92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v4

    #@96
    const-string/jumbo v5, ": "

    #@99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v4

    #@9d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v4

    #@a1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v4

    #@a5
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a8
    goto :goto_1
.end method

.method private setStaticIpAddress(Landroid/net/StaticIpConfiguration;)Z
    .locals 6
    .param p1, "staticConfig"    # Landroid/net/StaticIpConfiguration;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 225
    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 226
    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 227
    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v2

    #@f
    if-lez v2, :cond_0

    #@11
    .line 229
    :try_start_0
    const-string/jumbo v2, "EthernetNetworkFactory"

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "Applying static IPv4 configuration to "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    sget-object v4, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, ": "

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 230
    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    #@3a
    sget-object v3, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    #@3c
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@3f
    move-result-object v0

    #@40
    .line 231
    .local v0, "config":Landroid/net/InterfaceConfiguration;
    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@42
    invoke-virtual {v0, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    #@45
    .line 232
    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    #@47
    sget-object v3, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    #@49
    invoke-interface {v2, v3, v0}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    .line 233
    const/4 v2, 0x1

    #@4d
    return v2

    #@4e
    .line 234
    .end local v0    # "config":Landroid/net/InterfaceConfiguration;
    :catch_0
    move-exception v1

    #@4f
    .line 235
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "EthernetNetworkFactory"

    #@52
    new-instance v3, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v4, "Setting static IP address failed: "

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 240
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v5

    #@6e
    .line 238
    :cond_0
    const-string/jumbo v2, "EthernetNetworkFactory"

    #@71
    const-string/jumbo v3, "Invalid static IP configuration."

    #@74
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    goto :goto_0
.end method

.method private stopTrackingInterface(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 206
    sget-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 207
    return-void

    #@9
    .line 209
    :cond_0
    const-string/jumbo v0, "EthernetNetworkFactory"

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Stopped tracking interface "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 211
    monitor-enter p0

    #@24
    .line 212
    :try_start_0
    sget-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    #@26
    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    #@29
    .line 213
    const-string/jumbo v0, ""

    #@2c
    const/4 v1, 0x0

    #@2d
    invoke-direct {p0, v0, v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->setInterfaceInfoLocked(Ljava/lang/String;Ljava/lang/String;)V

    #@30
    .line 214
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@32
    const/4 v1, 0x0

    #@33
    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    #@36
    .line 215
    const/4 v0, 0x0

    #@37
    sput-boolean v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkUp:Z

    #@39
    .line 216
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@3b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@3d
    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mHwAddr:Ljava/lang/String;

    #@3f
    const/4 v3, 0x0

    #@40
    invoke-virtual {v0, v1, v3, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@43
    .line 217
    invoke-virtual {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->updateAgent()V

    #@46
    .line 218
    const/4 v0, 0x0

    #@47
    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@49
    .line 219
    new-instance v0, Landroid/net/NetworkInfo;

    #@4b
    const-string/jumbo v1, "Ethernet"

    #@4e
    const-string/jumbo v2, ""

    #@51
    const/16 v3, 0x9

    #@53
    const/4 v4, 0x0

    #@54
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    #@57
    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@59
    .line 220
    new-instance v0, Landroid/net/LinkProperties;

    #@5b
    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    #@5e
    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    monitor-exit p0

    #@61
    .line 205
    return-void

    #@62
    .line 211
    :catchall_0
    move-exception v0

    #@63
    monitor-exit p0

    #@64
    throw v0
.end method

.method private updateInterfaceState(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    .line 129
    sget-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 130
    return-void

    #@9
    .line 132
    :cond_0
    const-string/jumbo v1, "EthernetNetworkFactory"

    #@c
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "updateInterface: "

    #@14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v2, " link "

    #@1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    if-eqz p2, :cond_2

    #@25
    const-string/jumbo v0, "up"

    #@28
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 134
    monitor-enter p0

    #@34
    .line 135
    :try_start_0
    sput-boolean p2, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkUp:Z

    #@36
    .line 136
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@38
    invoke-virtual {v0, p2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@3b
    .line 137
    if-nez p2, :cond_1

    #@3d
    .line 139
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@3f
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@41
    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mHwAddr:Ljava/lang/String;

    #@43
    const/4 v3, 0x0

    #@44
    invoke-virtual {v0, v1, v3, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@47
    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->updateAgent()V

    #@4a
    .line 145
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    #@4c
    if-eqz p2, :cond_3

    #@4e
    const/16 v0, 0x46

    #@50
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->setScoreFilter(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@53
    monitor-exit p0

    #@54
    .line 128
    return-void

    #@55
    .line 132
    :cond_2
    const-string/jumbo v0, "down"

    #@58
    goto :goto_0

    #@59
    .line 145
    :cond_3
    const/4 v0, -0x1

    #@5a
    goto :goto_1

    #@5b
    .line 134
    :catchall_0
    move-exception v0

    #@5c
    monitor-exit p0

    #@5d
    throw v0
.end method


# virtual methods
.method declared-synchronized dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 460
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->isTrackingInterface()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v1, "Tracking interface: "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    sget-object v1, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@20
    .line 462
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@23
    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v1, "MAC address: "

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mHwAddr:Ljava/lang/String;

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v1, "Link state: "

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    sget-boolean v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkUp:Z

    #@4a
    if-eqz v0, :cond_0

    #@4c
    const-string/jumbo v0, "up"

    #@4f
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 465
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@5d
    .line 470
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@60
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v1, "NetworkInfo: "

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@79
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v1, "LinkProperties: "

    #@81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    #@87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v0

    #@8f
    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@92
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v1, "NetworkAgent: "

    #@9a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v0

    #@9e
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@a0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v0

    #@a4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v0

    #@a8
    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ab
    monitor-exit p0

    #@ac
    .line 459
    return-void

    #@ad
    .line 464
    :cond_0
    :try_start_1
    const-string/jumbo v0, "down"

    #@b0
    goto :goto_0

    #@b1
    .line 467
    :cond_1
    const-string/jumbo v0, "Not tracking any interface"

    #@b4
    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b7
    goto :goto_1

    #@b8
    :catchall_0
    move-exception v0

    #@b9
    monitor-exit p0

    #@ba
    throw v0
.end method

.method public declared-synchronized isTrackingInterface()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 433
    :try_start_0
    sget-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    #@3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    monitor-exit p0

    #@b
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public onRequestNetwork()V
    .locals 2

    #@0
    .prologue
    .line 263
    new-instance v0, Ljava/lang/Thread;

    #@2
    new-instance v1, Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    #@4
    invoke-direct {v1, p0}, Lcom/android/server/ethernet/EthernetNetworkFactory$1;-><init>(Lcom/android/server/ethernet/EthernetNetworkFactory;)V

    #@7
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@a
    .line 346
    .local v0, "dhcpThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@d
    .line 261
    return-void
.end method

.method public declared-synchronized start(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 354
    :try_start_0
    const-string/jumbo v4, "network_management"

    #@4
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    .line 355
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    #@b
    move-result-object v4

    #@c
    iput-object v4, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    #@e
    .line 356
    const-string/jumbo v4, "ethernet"

    #@11
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Landroid/net/EthernetManager;

    #@17
    iput-object v4, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mEthernetManager:Landroid/net/EthernetManager;

    #@19
    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1c
    move-result-object v4

    #@1d
    .line 360
    const v5, 0x1040019

    #@20
    .line 359
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    sput-object v4, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIfaceMatch:Ljava/lang/String;

    #@26
    .line 363
    new-instance v4, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    #@28
    const-string/jumbo v5, "Ethernet"

    #@2b
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@2e
    move-result-object v6

    #@2f
    invoke-direct {v4, p0, v5, p1, v6}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;-><init>(Lcom/android/server/ethernet/EthernetNetworkFactory;Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V

    #@32
    iput-object v4, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    #@34
    .line 364
    iget-object v4, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    #@36
    iget-object v5, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@38
    invoke-virtual {v4, v5}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    #@3b
    .line 365
    iget-object v4, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    #@3d
    const/4 v5, -0x1

    #@3e
    invoke-virtual {v4, v5}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->setScoreFilter(I)V

    #@41
    .line 366
    iget-object v4, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    #@43
    invoke-virtual {v4}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->register()V

    #@46
    .line 368
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mContext:Landroid/content/Context;

    #@48
    .line 371
    new-instance v4, Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;

    #@4a
    const/4 v5, 0x0

    #@4b
    invoke-direct {v4, p0, v5}, Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;-><init>(Lcom/android/server/ethernet/EthernetNetworkFactory;Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;)V

    #@4e
    iput-object v4, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mInterfaceObserver:Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    .line 373
    :try_start_1
    iget-object v4, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    #@52
    iget-object v5, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mInterfaceObserver:Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;

    #@54
    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 381
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    #@59
    invoke-interface {v4}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    .line 382
    .local v3, "ifaces":[Ljava/lang/String;
    const/4 v4, 0x0

    #@5e
    array-length v5, v3

    #@5f
    :goto_1
    if-ge v4, v5, :cond_1

    #@61
    aget-object v2, v3, v4

    #@63
    .line 383
    .local v2, "iface":Ljava/lang/String;
    monitor-enter p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@64
    .line 384
    :try_start_3
    invoke-direct {p0, v2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->maybeTrackInterface(Ljava/lang/String;)Z

    #@67
    move-result v6

    #@68
    if-eqz v6, :cond_2

    #@6a
    .line 392
    iget-object v4, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    #@6c
    invoke-interface {v4, v2}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@6f
    move-result-object v4

    #@70
    const-string/jumbo v5, "running"

    #@73
    invoke-virtual {v4, v5}, Landroid/net/InterfaceConfiguration;->hasFlag(Ljava/lang/String;)Z

    #@76
    move-result v4

    #@77
    if-eqz v4, :cond_0

    #@79
    .line 393
    const/4 v4, 0x1

    #@7a
    invoke-direct {p0, v2, v4}, Lcom/android/server/ethernet/EthernetNetworkFactory;->updateInterfaceState(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@7d
    :cond_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@7e
    .end local v2    # "iface":Ljava/lang/String;
    .end local v3    # "ifaces":[Ljava/lang/String;
    :cond_1
    :goto_2
    monitor-exit p0

    #@7f
    .line 352
    return-void

    #@80
    .line 374
    :catch_0
    move-exception v1

    #@81
    .line 375
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v4, "EthernetNetworkFactory"

    #@84
    new-instance v5, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v6, "Could not register InterfaceObserver "

    #@8c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v5

    #@94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v5

    #@98
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@9b
    goto :goto_0

    #@9c
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@9d
    monitor-exit p0

    #@9e
    throw v4

    #@9f
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "iface":Ljava/lang/String;
    .restart local v3    # "ifaces":[Ljava/lang/String;
    :cond_2
    :try_start_6
    monitor-exit p0

    #@a0
    .line 382
    add-int/lit8 v4, v4, 0x1

    #@a2
    goto :goto_1

    #@a3
    .line 383
    :catchall_1
    move-exception v4

    #@a4
    monitor-exit p0

    #@a5
    throw v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@a6
    .line 399
    .end local v2    # "iface":Ljava/lang/String;
    .end local v3    # "ifaces":[Ljava/lang/String;
    :catch_1
    move-exception v1

    #@a7
    .line 400
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v4, "EthernetNetworkFactory"

    #@aa
    new-instance v5, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v6, "Could not get list of interfaces "

    #@b2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v5

    #@b6
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v5

    #@ba
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v5

    #@be
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@c1
    goto :goto_2
.end method

.method public declared-synchronized stop()V
    .locals 5

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 405
    :try_start_0
    sget-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    #@3
    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    #@6
    .line 412
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@8
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@a
    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mHwAddr:Ljava/lang/String;

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {v0, v1, v3, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 413
    const/4 v0, 0x0

    #@11
    sput-boolean v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkUp:Z

    #@13
    .line 414
    invoke-virtual {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->updateAgent()V

    #@16
    .line 415
    new-instance v0, Landroid/net/LinkProperties;

    #@18
    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    #@1d
    .line 416
    const/4 v0, 0x0

    #@1e
    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@20
    .line 417
    const-string/jumbo v0, ""

    #@23
    const/4 v1, 0x0

    #@24
    invoke-direct {p0, v0, v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->setInterfaceInfoLocked(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 418
    new-instance v0, Landroid/net/NetworkInfo;

    #@29
    const-string/jumbo v1, "Ethernet"

    #@2c
    const-string/jumbo v2, ""

    #@2f
    const/16 v3, 0x9

    #@31
    const/4 v4, 0x0

    #@32
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    #@35
    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@37
    .line 419
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    #@39
    invoke-virtual {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->unregister()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    monitor-exit p0

    #@3d
    .line 404
    return-void

    #@3e
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit p0

    #@40
    throw v0
.end method

.method public updateAgent()V
    .locals 3

    #@0
    .prologue
    .line 244
    monitor-enter p0

    #@1
    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    return-void

    #@7
    .line 247
    :cond_0
    :try_start_1
    const-string/jumbo v0, "EthernetNetworkFactory"

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Updating mNetworkAgent with: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 248
    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@18
    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 248
    const-string/jumbo v2, ", "

    #@1f
    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 249
    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@25
    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 249
    const-string/jumbo v2, ", "

    #@2c
    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 250
    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    #@32
    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 252
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@3f
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@41
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    #@44
    .line 253
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@46
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@48
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@4b
    .line 254
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@4d
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    #@4f
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    #@52
    .line 256
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@54
    sget-boolean v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkUp:Z

    #@56
    if-eqz v0, :cond_1

    #@58
    const/16 v0, 0x46

    #@5a
    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/NetworkAgent;->sendNetworkScore(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    monitor-exit p0

    #@5e
    .line 243
    return-void

    #@5f
    .line 256
    :cond_1
    const/4 v0, 0x0

    #@60
    goto :goto_0

    #@61
    .line 244
    :catchall_0
    move-exception v0

    #@62
    monitor-exit p0

    #@63
    throw v0
.end method
