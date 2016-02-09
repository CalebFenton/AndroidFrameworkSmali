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
.field private static final DBG:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

.field private mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

.field private final mInterfaceName:Ljava/lang/String;

.field private final mLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/server/net/NetlinkTracker$Callback;

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    #@3
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "NetlinkTracker/"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->TAG:Ljava/lang/String;

    #@19
    .line 84
    iput-object p1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    #@1b
    .line 85
    iput-object p2, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    #@1d
    .line 86
    new-instance v0, Landroid/net/LinkProperties;

    #@1f
    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    #@22
    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    #@24
    .line 87
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    #@26
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    #@28
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    #@2b
    .line 88
    new-instance v0, Lcom/android/server/net/DnsServerRepository;

    #@2d
    invoke-direct {v0}, Lcom/android/server/net/DnsServerRepository;-><init>()V

    #@30
    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    #@32
    .line 82
    return-void
.end method

.method private maybeLog(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 98
    return-void
.end method

.method private maybeLog(Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "address"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    .line 91
    return-void
.end method


# virtual methods
.method public addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    #@2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 121
    const-string/jumbo v1, "addressRemoved"

    #@b
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkAddress;)V

    #@e
    .line 123
    monitor-enter p0

    #@f
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    #@11
    invoke-virtual {v1, p2}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v0

    #@15
    .local v0, "changed":Z
    monitor-exit p0

    #@16
    .line 126
    if-eqz v0, :cond_0

    #@18
    .line 127
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    #@1a
    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    #@1d
    .line 119
    .end local v0    # "changed":Z
    :cond_0
    return-void

    #@1e
    .line 123
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit p0

    #@20
    throw v1
.end method

.method public addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    #@2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 107
    const-string/jumbo v1, "addressUpdated"

    #@b
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkAddress;)V

    #@e
    .line 109
    monitor-enter p0

    #@f
    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    #@11
    invoke-virtual {v1, p2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v0

    #@15
    .local v0, "changed":Z
    monitor-exit p0

    #@16
    .line 112
    if-eqz v0, :cond_0

    #@18
    .line 113
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    #@1a
    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    #@1d
    .line 105
    .end local v0    # "changed":Z
    :cond_0
    return-void

    #@1e
    .line 109
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit p0

    #@20
    throw v1
.end method

.method public declared-synchronized clearLinkProperties()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 185
    :try_start_0
    new-instance v0, Lcom/android/server/net/DnsServerRepository;

    #@3
    invoke-direct {v0}, Lcom/android/server/net/DnsServerRepository;-><init>()V

    #@6
    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    #@8
    .line 186
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    #@a
    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    #@d
    .line 187
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    #@f
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    #@11
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 181
    return-void

    #@16
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public declared-synchronized getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 178
    :try_start_0
    new-instance v0, Landroid/net/LinkProperties;

    #@3
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    #@5
    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return-object v0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "addresses"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    #@2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 163
    const-string/jumbo v1, "interfaceDnsServerInfo"

    #@b
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    #@12
    .line 164
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    #@14
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/net/DnsServerRepository;->addServers(J[Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    .line 165
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    #@1a
    .line 166
    monitor-enter p0

    #@1b
    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    #@1d
    iget-object v2, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    #@1f
    invoke-virtual {v1, v2}, Lcom/android/server/net/DnsServerRepository;->setDnsServersOn(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit p0

    #@23
    .line 169
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    #@25
    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    #@28
    .line 161
    .end local v0    # "changed":Z
    :cond_0
    return-void

    #@29
    .line 166
    .restart local v0    # "changed":Z
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit p0

    #@2b
    throw v1
.end method

.method public routeRemoved(Landroid/net/RouteInfo;)V
    .locals 3
    .param p1, "route"    # Landroid/net/RouteInfo;

    #@0
    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    #@2
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 149
    const-string/jumbo v1, "routeRemoved"

    #@f
    invoke-direct {p0, v1, p1}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    #@12
    .line 151
    monitor-enter p0

    #@13
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    #@15
    invoke-virtual {v1, p1}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v0

    #@19
    .local v0, "changed":Z
    monitor-exit p0

    #@1a
    .line 154
    if-eqz v0, :cond_0

    #@1c
    .line 155
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    #@1e
    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    #@21
    .line 147
    .end local v0    # "changed":Z
    :cond_0
    return-void

    #@22
    .line 151
    :catchall_0
    move-exception v1

    #@23
    monitor-exit p0

    #@24
    throw v1
.end method

.method public routeUpdated(Landroid/net/RouteInfo;)V
    .locals 3
    .param p1, "route"    # Landroid/net/RouteInfo;

    #@0
    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    #@2
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 135
    const-string/jumbo v1, "routeUpdated"

    #@f
    invoke-direct {p0, v1, p1}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    #@12
    .line 137
    monitor-enter p0

    #@13
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    #@15
    invoke-virtual {v1, p1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v0

    #@19
    .local v0, "changed":Z
    monitor-exit p0

    #@1a
    .line 140
    if-eqz v0, :cond_0

    #@1c
    .line 141
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    #@1e
    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    #@21
    .line 133
    .end local v0    # "changed":Z
    :cond_0
    return-void

    #@22
    .line 137
    :catchall_0
    move-exception v1

    #@23
    monitor-exit p0

    #@24
    throw v1
.end method
