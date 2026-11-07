.class public Lcom/android/server/net/NetlinkTracker;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "NetlinkTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetlinkTracker$Callback;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = false


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private final blacklist mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

.field private blacklist mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

.field private final blacklist mInterfaceName:Ljava/lang/String;

.field private final blacklist mLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor greylist-max-r <init>(Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/server/net/NetlinkTracker$Callback;

    .line 85
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetlinkTracker/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->TAG:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    .line 89
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 90
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/android/server/net/DnsServerRepository;

    invoke-direct {v0}, Lcom/android/server/net/DnsServerRepository;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    .line 92
    return-void
.end method

.method private blacklist maybeLog(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .line 105
    return-void
.end method

.method private blacklist maybeLog(Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "address"    # Landroid/net/LinkAddress;

    .line 99
    return-void
.end method


# virtual methods
.method public blacklist addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .line 136
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 137
    const-string v0, "addressRemoved"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 139
    monitor-enter p0

    .line 140
    :try_start_e
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p2}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    move-result v0

    .line 141
    .local v0, "changed":Z
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1d

    .line 142
    if-eqz v0, :cond_20

    .line 143
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    goto :goto_20

    .line 141
    .end local v0    # "changed":Z
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0

    .line 146
    :cond_20
    :goto_20
    return-void
.end method

.method public blacklist addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .line 122
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 123
    const-string v0, "addressUpdated"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 125
    monitor-enter p0

    .line 126
    :try_start_e
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    move-result v0

    .line 127
    .local v0, "changed":Z
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1d

    .line 128
    if-eqz v0, :cond_20

    .line 129
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    goto :goto_20

    .line 127
    .end local v0    # "changed":Z
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0

    .line 132
    :cond_20
    :goto_20
    return-void
.end method

.method public declared-synchronized greylist-max-r clearLinkProperties()V
    .registers 3

    monitor-enter p0

    .line 203
    :try_start_1
    new-instance v0, Lcom/android/server/net/DnsServerRepository;

    invoke-direct {v0}, Lcom/android/server/net/DnsServerRepository;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    .line 204
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 205
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 206
    monitor-exit p0

    return-void

    .line 202
    .end local p0    # "this":Lcom/android/server/net/NetlinkTracker;
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public declared-synchronized greylist-max-r getLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    monitor-enter p0

    .line 195
    :try_start_1
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    .line 195
    .end local p0    # "this":Lcom/android/server/net/NetlinkTracker;
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public blacklist interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "addresses"    # [Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 179
    const-string v0, "interfaceDnsServerInfo"

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/net/DnsServerRepository;->addServers(J[Ljava/lang/String;)Z

    move-result v0

    .line 181
    .local v0, "changed":Z
    if-eqz v0, :cond_2b

    .line 182
    monitor-enter p0

    .line 183
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    iget-object v2, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Lcom/android/server/net/DnsServerRepository;->setDnsServersOn(Landroid/net/LinkProperties;)V

    .line 184
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_28

    .line 185
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    goto :goto_2b

    .line 184
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1

    .line 188
    .end local v0    # "changed":Z
    :cond_2b
    :goto_2b
    return-void
.end method

.method public blacklist interfaceRemoved(Ljava/lang/String;)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;

    .line 109
    const-string v0, "interfaceRemoved"

    invoke-direct {p0, v0, p1}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 115
    invoke-virtual {p0}, Lcom/android/server/net/NetlinkTracker;->clearLinkProperties()V

    .line 116
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    invoke-interface {v0}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 118
    :cond_15
    return-void
.end method

.method public blacklist routeRemoved(Landroid/net/RouteInfo;)V
    .registers 4
    .param p1, "route"    # Landroid/net/RouteInfo;

    .line 164
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 165
    const-string/jumbo v0, "routeRemoved"

    invoke-direct {p0, v0, p1}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    monitor-enter p0

    .line 168
    :try_start_13
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    move-result v0

    .line 169
    .local v0, "changed":Z
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_22

    .line 170
    if-eqz v0, :cond_25

    .line 171
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    goto :goto_25

    .line 169
    .end local v0    # "changed":Z
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0

    .line 174
    :cond_25
    :goto_25
    return-void
.end method

.method public blacklist routeUpdated(Landroid/net/RouteInfo;)V
    .registers 4
    .param p1, "route"    # Landroid/net/RouteInfo;

    .line 150
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 151
    const-string/jumbo v0, "routeUpdated"

    invoke-direct {p0, v0, p1}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    monitor-enter p0

    .line 154
    :try_start_13
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    move-result v0

    .line 155
    .local v0, "changed":Z
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_22

    .line 156
    if-eqz v0, :cond_25

    .line 157
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    goto :goto_25

    .line 155
    .end local v0    # "changed":Z
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0

    .line 160
    :cond_25
    :goto_25
    return-void
.end method
