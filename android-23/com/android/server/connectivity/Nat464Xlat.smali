.class public Lcom/android/server/connectivity/Nat464Xlat;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Nat464Xlat.java"


# static fields
.field private static final CLAT_PREFIX:Ljava/lang/String; = "v4-"

.field private static final TAG:Ljava/lang/String; = "Nat464Xlat"


# instance fields
.field private mBaseIface:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIface:Ljava/lang/String;

.field private mIsRunning:Z

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmService"    # Landroid/os/INetworkManagementService;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    #@3
    .line 76
    iput-object p2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    #@5
    .line 77
    iput-object p3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mHandler:Landroid/os/Handler;

    #@7
    .line 78
    iput-object p4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@9
    .line 75
    return-void
.end method

.method private clear()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 108
    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    #@3
    .line 109
    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    #@5
    .line 110
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    #@8
    .line 107
    return-void
.end method

.method private getLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    #@2
    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@5
    move-result-object v0

    #@6
    .line 216
    .local v0, "config":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v2

    #@a
    return-object v2

    #@b
    .line 217
    .end local v0    # "config":Landroid/net/InterfaceConfiguration;
    :catch_0
    move-exception v1

    #@c
    .line 218
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Nat464Xlat"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Error getting link properties: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 219
    const/4 v2, 0x0

    #@27
    return-object v2
.end method

.method private makeLinkProperties(Landroid/net/LinkAddress;)Landroid/net/LinkProperties;
    .locals 5
    .param p1, "clatAddress"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    .line 196
    new-instance v1, Landroid/net/LinkProperties;

    #@2
    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    #@5
    .line 197
    .local v1, "stacked":Landroid/net/LinkProperties;
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    #@7
    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    #@a
    .line 205
    new-instance v0, Landroid/net/RouteInfo;

    #@c
    .line 206
    new-instance v2, Landroid/net/LinkAddress;

    #@e
    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    #@10
    const/4 v4, 0x0

    #@11
    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@14
    .line 207
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@17
    move-result-object v3

    #@18
    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    #@1a
    .line 205
    invoke-direct {v0, v2, v3, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    #@1d
    .line 208
    .local v0, "ipv4Default":Landroid/net/RouteInfo;
    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    #@20
    .line 209
    invoke-virtual {v1, p1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    #@23
    .line 210
    return-object v1
.end method

.method private maybeSetIpv6NdOffload(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "on"    # Z

    #@0
    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@2
    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x1

    #@9
    if-eq v1, v2, :cond_0

    #@b
    .line 225
    return-void

    #@c
    .line 228
    :cond_0
    :try_start_0
    const-string/jumbo v2, "Nat464Xlat"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    if-eqz p2, :cond_1

    #@16
    const-string/jumbo v1, "En"

    #@19
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v3, "abling ND offload on "

    #@20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 229
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    #@31
    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V

    #@34
    .line 223
    :goto_1
    return-void

    #@35
    .line 228
    :cond_1
    const-string/jumbo v1, "Dis"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    goto :goto_0

    #@39
    .line 230
    :catch_0
    move-exception v0

    #@3a
    .line 231
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Nat464Xlat"

    #@3d
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v3, "Changing IPv6 ND offload on "

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    const-string/jumbo v3, "failed: "

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    goto :goto_1
.end method

.method public static requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 6
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 87
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@4
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    #@7
    move-result v2

    #@8
    .line 88
    .local v2, "netType":I
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@a
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    #@d
    move-result v0

    #@e
    .line 90
    .local v0, "connected":Z
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@10
    if-eqz v5, :cond_2

    #@12
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@14
    invoke-virtual {v5}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    #@17
    move-result v1

    #@18
    .line 93
    :goto_0
    if-eqz v0, :cond_0

    #@1a
    if-eqz v1, :cond_3

    #@1c
    :cond_0
    move v3, v4

    #@1d
    :cond_1
    :goto_1
    return v3

    #@1e
    .line 90
    :cond_2
    const/4 v1, 0x0

    #@1f
    .local v1, "hasIPv4Address":Z
    goto :goto_0

    #@20
    .line 93
    .end local v1    # "hasIPv4Address":Z
    :cond_3
    if-eqz v2, :cond_1

    #@22
    if-ne v2, v3, :cond_0

    #@24
    goto :goto_1
.end method

.method private updateConnectivityService(Landroid/net/LinkProperties;)V
    .locals 4
    .param p1, "lp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mHandler:Landroid/os/Handler;

    #@2
    const v2, 0x81003

    #@5
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 170
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@b
    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    #@d
    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@f
    .line 171
    const-string/jumbo v1, "Nat464Xlat"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "sending message to ConnectivityService: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 172
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@2c
    .line 168
    return-void
.end method


# virtual methods
.method public fixupLinkProperties(Landroid/net/LinkProperties;)V
    .locals 5
    .param p1, "oldLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 181
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@2
    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 182
    iget-boolean v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    #@8
    .line 181
    if-eqz v2, :cond_0

    #@a
    .line 183
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@c
    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 184
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@12
    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@14
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    #@17
    move-result-object v2

    #@18
    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    #@1a
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 180
    :cond_0
    :goto_0
    return-void

    #@21
    .line 185
    :cond_1
    const-string/jumbo v2, "Nat464Xlat"

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "clatd running, updating NAI for "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 186
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    #@40
    move-result-object v2

    #@41
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@44
    move-result-object v1

    #@45
    .local v1, "stacked$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@48
    move-result v2

    #@49
    if-eqz v2, :cond_0

    #@4b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4e
    move-result-object v0

    #@4f
    check-cast v0, Landroid/net/LinkProperties;

    #@51
    .line 187
    .local v0, "stacked":Landroid/net/LinkProperties;
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    #@53
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_2

    #@5d
    .line 188
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@5f
    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@61
    invoke-virtual {v2, v0}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    #@64
    goto :goto_0
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    if-eqz p2, :cond_1

    #@8
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    #@a
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 239
    const-string/jumbo v2, "Nat464Xlat"

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "interface "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    const-string/jumbo v4, " is up, mIsRunning "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    iget-boolean v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    const-string/jumbo v4, "->true"

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 241
    iget-boolean v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    #@40
    if-nez v2, :cond_1

    #@42
    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Nat464Xlat;->getLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    #@45
    move-result-object v0

    #@46
    .line 243
    .local v0, "clatAddress":Landroid/net/LinkAddress;
    if-nez v0, :cond_0

    #@48
    .line 244
    return-void

    #@49
    .line 246
    :cond_0
    const/4 v2, 0x1

    #@4a
    iput-boolean v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    #@4c
    .line 247
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    #@4e
    const/4 v3, 0x0

    #@4f
    invoke-direct {p0, v2, v3}, Lcom/android/server/connectivity/Nat464Xlat;->maybeSetIpv6NdOffload(Ljava/lang/String;Z)V

    #@52
    .line 248
    new-instance v1, Landroid/net/LinkProperties;

    #@54
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@56
    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@58
    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@5b
    .line 249
    .local v1, "lp":Landroid/net/LinkProperties;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Nat464Xlat;->makeLinkProperties(Landroid/net/LinkAddress;)Landroid/net/LinkProperties;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    #@62
    .line 250
    const-string/jumbo v2, "Nat464Xlat"

    #@65
    new-instance v3, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v4, "Adding stacked link "

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    #@73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    const-string/jumbo v4, " on top of "

    #@7a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    #@80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v3

    #@84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v3

    #@88
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    .line 251
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Nat464Xlat;->updateConnectivityService(Landroid/net/LinkProperties;)V

    #@8e
    .line 236
    .end local v0    # "clatAddress":Landroid/net/LinkAddress;
    .end local v1    # "lp":Landroid/net/LinkProperties;
    :cond_1
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    #@8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 259
    const-string/jumbo v2, "Nat464Xlat"

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "interface "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    const-string/jumbo v4, " removed, mIsRunning "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    iget-boolean v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    const-string/jumbo v4, "->false"

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 261
    iget-boolean v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    #@3e
    if-eqz v2, :cond_0

    #@40
    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    #@42
    invoke-interface {v2, p0}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    #@45
    .line 271
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    #@47
    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    #@49
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->stopClatd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    .line 275
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    #@4e
    const/4 v3, 0x1

    #@4f
    invoke-direct {p0, v2, v3}, Lcom/android/server/connectivity/Nat464Xlat;->maybeSetIpv6NdOffload(Ljava/lang/String;Z)V

    #@52
    .line 276
    new-instance v1, Landroid/net/LinkProperties;

    #@54
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@56
    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@58
    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@5b
    .line 277
    .local v1, "lp":Landroid/net/LinkProperties;
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    #@5d
    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->removeStackedLink(Ljava/lang/String;)Z

    #@60
    .line 278
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->clear()V

    #@63
    .line 279
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Nat464Xlat;->updateConnectivityService(Landroid/net/LinkProperties;)V

    #@66
    .line 257
    .end local v1    # "lp":Landroid/net/LinkProperties;
    :cond_0
    return-void

    #@67
    .line 272
    :catch_0
    move-exception v0

    #@68
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public start()V
    .locals 5

    #@0
    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 118
    const-string/jumbo v2, "Nat464Xlat"

    #@9
    const-string/jumbo v3, "startClat: already started"

    #@c
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 119
    return-void

    #@10
    .line 122
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@12
    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@14
    if-nez v2, :cond_1

    #@16
    .line 123
    const-string/jumbo v2, "Nat464Xlat"

    #@19
    const-string/jumbo v3, "startClat: Can\'t start clat with null LinkProperties"

    #@1c
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 124
    return-void

    #@20
    .line 128
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    #@22
    invoke-interface {v2, p0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 134
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@27
    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@29
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    iput-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    #@2f
    .line 135
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    #@31
    if-nez v2, :cond_2

    #@33
    .line 136
    const-string/jumbo v2, "Nat464Xlat"

    #@36
    const-string/jumbo v3, "startClat: Can\'t start clat on null interface"

    #@39
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 137
    return-void

    #@3d
    .line 129
    :catch_0
    move-exception v0

    #@3e
    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Nat464Xlat"

    #@41
    new-instance v3, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v4, "startClat: Can\'t register interface observer for clat on "

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 131
    return-void

    #@5b
    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v3, "v4-"

    #@63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    #@69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v2

    #@71
    iput-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    #@73
    .line 142
    const-string/jumbo v2, "Nat464Xlat"

    #@76
    new-instance v3, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v4, "Starting clatd on "

    #@7e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v3

    #@82
    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    #@84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v3

    #@8c
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    .line 144
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    #@91
    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    #@93
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->startClatd(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    #@96
    .line 116
    :goto_0
    return-void

    #@97
    .line 145
    :catch_1
    move-exception v1

    #@98
    .line 146
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Nat464Xlat"

    #@9b
    new-instance v3, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v4, "Error starting clatd: "

    #@a3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v3

    #@a7
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v3

    #@ab
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v3

    #@af
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    goto :goto_0
.end method

.method public stop()V
    .locals 4

    #@0
    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 155
    const-string/jumbo v1, "Nat464Xlat"

    #@9
    const-string/jumbo v2, "Stopping clatd"

    #@c
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    #@11
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    #@13
    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->stopClatd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 153
    :goto_0
    return-void

    #@17
    .line 158
    :catch_0
    move-exception v0

    #@18
    .line 159
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Nat464Xlat"

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "Error stopping clatd: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    goto :goto_0

    #@33
    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v1, "Nat464Xlat"

    #@36
    const-string/jumbo v2, "clatd: already stopped"

    #@39
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    goto :goto_0
.end method
