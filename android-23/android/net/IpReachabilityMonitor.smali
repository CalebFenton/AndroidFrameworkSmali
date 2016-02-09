.class public Landroid/net/IpReachabilityMonitor;
.super Ljava/lang/Object;
.source "IpReachabilityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpReachabilityMonitor$Callback;,
        Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "IpReachabilityMonitor"

.field private static final VDBG:Z


# instance fields
.field private final mCallback:Landroid/net/IpReachabilityMonitor$Callback;

.field private final mInterfaceIndex:I

.field private final mInterfaceName:Ljava/lang/String;

.field private mIpWatchList:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private mIpWatchListVersion:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLinkProperties:Landroid/net/LinkProperties;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mNetlinkSocketObserver:Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;

.field private final mObserverThread:Ljava/lang/Thread;

.field private mRunning:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/net/IpReachabilityMonitor;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceIndex:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/net/IpReachabilityMonitor;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/net/IpReachabilityMonitor;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/net/IpReachabilityMonitor;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/net/IpReachabilityMonitor;->mRunning:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/net/IpReachabilityMonitor;Ljava/net/InetAddress;)Z
    .locals 1
    .param p1, "ip"    # Ljava/net/InetAddress;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/IpReachabilityMonitor;->isWatching(Ljava/net/InetAddress;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/net/IpReachabilityMonitor;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor;->stillRunning()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/net/IpReachabilityMonitor;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/IpReachabilityMonitor;->handleNeighborLost(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/IpReachabilityMonitor$Callback;)V
    .locals 6
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/net/IpReachabilityMonitor$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    new-instance v3, Ljava/lang/Object;

    #@5
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@a
    .line 83
    new-instance v3, Landroid/net/LinkProperties;

    #@c
    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    #@f
    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@11
    .line 87
    new-instance v3, Ljava/util/HashMap;

    #@13
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@16
    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@18
    .line 140
    iput-object p1, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    #@1a
    .line 141
    const/4 v1, -0x1

    #@1b
    .line 143
    .local v1, "ifIndex":I
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@1e
    move-result-object v2

    #@1f
    .line 144
    .local v2, "netIf":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    #@22
    move-result v3

    #@23
    iput v3, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceIndex:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 148
    iput-object p2, p0, Landroid/net/IpReachabilityMonitor;->mCallback:Landroid/net/IpReachabilityMonitor$Callback;

    #@27
    .line 149
    new-instance v3, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-direct {v3, p0, v4}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;-><init>(Landroid/net/IpReachabilityMonitor;Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;)V

    #@2d
    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;

    #@2f
    .line 150
    new-instance v3, Ljava/lang/Thread;

    #@31
    iget-object v4, p0, Landroid/net/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;

    #@33
    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@36
    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mObserverThread:Ljava/lang/Thread;

    #@38
    .line 151
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor;->mObserverThread:Ljava/lang/Thread;

    #@3a
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    #@3d
    .line 139
    return-void

    #@3e
    .line 145
    .end local v2    # "netIf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    #@3f
    .line 146
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@41
    new-instance v4, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v5, "invalid interface \'"

    #@49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    const-string/jumbo v5, "\': "

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5f
    throw v3
.end method

.method private describeWatchList()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 163
    const-string/jumbo v0, ", "

    #@3
    .line 164
    .local v0, "delimiter":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    .line 165
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@a
    monitor-enter v6

    #@b
    .line 166
    :try_start_0
    const-string/jumbo v5, "iface{"

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v5

    #@12
    iget-object v7, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    #@14
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    const-string/jumbo v7, "/"

    #@1b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    iget v7, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceIndex:I

    #@21
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    const-string/jumbo v7, "}, "

    #@28
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 167
    const-string/jumbo v5, "v{"

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    iget v7, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchListVersion:I

    #@34
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    const-string/jumbo v7, "}, "

    #@3b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 168
    const-string/jumbo v5, "ntable=["

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 169
    const/4 v3, 0x1

    #@45
    .line 170
    .local v3, "firstTime":Z
    iget-object v5, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@47
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@4a
    move-result-object v5

    #@4b
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4e
    move-result-object v2

    #@4f
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@52
    move-result v5

    #@53
    if-eqz v5, :cond_1

    #@55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v1

    #@59
    check-cast v1, Ljava/util/Map$Entry;

    #@5b
    .line 171
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    if-eqz v3, :cond_0

    #@5d
    .line 172
    const/4 v3, 0x0

    #@5e
    .line 176
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@61
    move-result-object v5

    #@62
    check-cast v5, Ljava/net/InetAddress;

    #@64
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    const-string/jumbo v7, "/"

    #@6f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v7

    #@73
    .line 177
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@76
    move-result-object v5

    #@77
    check-cast v5, Ljava/lang/Short;

    #@79
    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    #@7c
    move-result v5

    #@7d
    invoke-static {v5}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    .line 176
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@84
    goto :goto_0

    #@85
    .line 165
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "firstTime":Z
    :catchall_0
    move-exception v5

    #@86
    monitor-exit v6

    #@87
    throw v5

    #@88
    .line 174
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    .restart local v3    # "firstTime":Z
    :cond_0
    :try_start_1
    const-string/jumbo v5, ", "

    #@8b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    goto :goto_1

    #@8f
    .line 179
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    :cond_1
    const-string/jumbo v5, "]"

    #@92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@95
    monitor-exit v6

    #@96
    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v5

    #@9a
    return-object v5
.end method

.method private getNeighborStateLocked(Ljava/net/InetAddress;)S
    .locals 1
    .param p1, "ip"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 207
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@a
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/Short;

    #@10
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 209
    :cond_0
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method private handleNeighborLost(Ljava/lang/String;)V
    .locals 12
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 256
    const/4 v4, 0x0

    #@1
    .line 258
    .local v4, "ip":Ljava/net/InetAddress;
    iget-object v10, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v10

    #@4
    .line 259
    :try_start_0
    new-instance v8, Landroid/net/LinkProperties;

    #@6
    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@8
    invoke-direct {v8, v9}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@b
    .line 261
    .local v8, "whatIfLp":Landroid/net/LinkProperties;
    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@d
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@10
    move-result-object v9

    #@11
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v3

    #@15
    .end local v4    # "ip":Ljava/net/InetAddress;
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v9

    #@19
    if-eqz v9, :cond_3

    #@1b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Ljava/util/Map$Entry;

    #@21
    .line 262
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@24
    move-result-object v9

    #@25
    check-cast v9, Ljava/lang/Short;

    #@27
    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    #@2a
    move-result v9

    #@2b
    const/16 v11, 0x20

    #@2d
    if-ne v9, v11, :cond_0

    #@2f
    .line 266
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@32
    move-result-object v9

    #@33
    move-object v0, v9

    #@34
    check-cast v0, Ljava/net/InetAddress;

    #@36
    move-object v4, v0

    #@37
    .line 267
    .local v4, "ip":Ljava/net/InetAddress;
    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@39
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    #@3c
    move-result-object v9

    #@3d
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v7

    #@41
    .local v7, "route$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v9

    #@45
    if-eqz v9, :cond_2

    #@47
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a
    move-result-object v6

    #@4b
    check-cast v6, Landroid/net/RouteInfo;

    #@4d
    .line 268
    .local v6, "route":Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@50
    move-result-object v9

    #@51
    invoke-virtual {v4, v9}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v9

    #@55
    if-eqz v9, :cond_1

    #@57
    .line 269
    invoke-virtual {v8, v6}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    goto :goto_1

    #@5b
    .line 258
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "ip":Ljava/net/InetAddress;
    .end local v6    # "route":Landroid/net/RouteInfo;
    .end local v7    # "route$iterator":Ljava/util/Iterator;
    .end local v8    # "whatIfLp":Landroid/net/LinkProperties;
    :catchall_0
    move-exception v9

    #@5c
    monitor-exit v10

    #@5d
    throw v9

    #@5e
    .line 272
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    .restart local v4    # "ip":Ljava/net/InetAddress;
    .restart local v7    # "route$iterator":Ljava/util/Iterator;
    .restart local v8    # "whatIfLp":Landroid/net/LinkProperties;
    :cond_2
    :try_start_1
    invoke-virtual {v8, v4}, Landroid/net/LinkProperties;->removeDnsServer(Ljava/net/InetAddress;)Z

    #@61
    goto :goto_0

    #@62
    .line 275
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v4    # "ip":Ljava/net/InetAddress;
    .end local v7    # "route$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@64
    invoke-static {v9, v8}, Landroid/net/LinkProperties;->compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@67
    move-result-object v1

    #@68
    .local v1, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    monitor-exit v10

    #@69
    .line 278
    sget-object v9, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@6b
    if-ne v1, v9, :cond_4

    #@6d
    .line 279
    new-instance v9, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v10, "FAILURE: LOST_PROVISIONING, "

    #@75
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v9

    #@79
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v9

    #@7d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    .line 280
    .local v5, "logMsg":Ljava/lang/String;
    const-string/jumbo v9, "IpReachabilityMonitor"

    #@84
    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    .line 281
    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mCallback:Landroid/net/IpReachabilityMonitor$Callback;

    #@89
    if-eqz v9, :cond_4

    #@8b
    .line 284
    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mCallback:Landroid/net/IpReachabilityMonitor$Callback;

    #@8d
    invoke-interface {v9, v4, v5}, Landroid/net/IpReachabilityMonitor$Callback;->notifyLost(Ljava/net/InetAddress;Ljava/lang/String;)V

    #@90
    .line 255
    .end local v5    # "logMsg":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z
    .locals 3
    .param p1, "ip"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;",
            "Ljava/net/InetAddress;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .line 197
    .local p0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "route$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/net/RouteInfo;

    #@10
    .line 198
    .local v0, "route":Landroid/net/RouteInfo;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->hasGateway()Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_0

    #@16
    invoke-virtual {v0, p1}, Landroid/net/RouteInfo;->matches(Ljava/net/InetAddress;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 199
    const/4 v2, 0x1

    #@1d
    return v2

    #@1e
    .line 202
    .end local v0    # "route":Landroid/net/RouteInfo;
    :cond_1
    const/4 v2, 0x0

    #@1f
    return v2
.end method

.method private isWatching(Ljava/net/InetAddress;)Z
    .locals 2
    .param p1, "ip"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 185
    iget-object v1, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 186
    :try_start_0
    iget-boolean v0, p0, Landroid/net/IpReachabilityMonitor;->mRunning:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@9
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    :goto_0
    monitor-exit v1

    #@e
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0

    #@11
    .line 185
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public static probeNeighbor(ILjava/net/InetAddress;)Z
    .locals 19
    .param p0, "ifIndex"    # I
    .param p1, "ip"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 100
    const-wide/16 v8, 0x12c

    #@2
    .line 101
    .local v8, "IO_TIMEOUT":J
    new-instance v4, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v5, "probing ip="

    #@a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v4

    #@e
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    const-string/jumbo v5, "%"

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    move/from16 v0, p0

    #@1f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v13

    #@27
    .line 102
    .local v13, "msgSnippet":Ljava/lang/String;
    const-string/jumbo v4, "IpReachabilityMonitor"

    #@2a
    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 105
    const/4 v4, 0x1

    #@2e
    const/16 v5, 0x10

    #@30
    const/4 v6, 0x0

    #@31
    .line 104
    move-object/from16 v0, p1

    #@33
    move/from16 v1, p0

    #@35
    invoke-static {v4, v0, v5, v1, v6}, Landroid/net/netlink/RtNetlinkNeighborMessage;->newNewNeighborMessage(ILjava/net/InetAddress;SI[B)[B

    #@38
    move-result-object v3

    #@39
    .line 106
    .local v3, "msg":[B
    const/16 v16, 0x0

    #@3b
    .line 108
    .local v16, "returnValue":Z
    const/16 v17, 0x0

    #@3d
    const/4 v14, 0x0

    #@3e
    .local v14, "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :try_start_0
    new-instance v2, Landroid/net/netlink/NetlinkSocket;

    #@40
    sget v4, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    #@42
    invoke-direct {v2, v4}, Landroid/net/netlink/NetlinkSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@45
    .line 109
    .end local v14    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .local v2, "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :try_start_1
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->connectToKernel()V

    #@48
    .line 110
    array-length v5, v3

    #@49
    const/4 v4, 0x0

    #@4a
    const-wide/16 v6, 0x12c

    #@4c
    invoke-virtual/range {v2 .. v7}, Landroid/net/netlink/NetlinkSocket;->sendMessage([BIIJ)Z

    #@4f
    .line 111
    const-wide/16 v4, 0x12c

    #@51
    invoke-virtual {v2, v4, v5}, Landroid/net/netlink/NetlinkSocket;->recvMessage(J)Ljava/nio/ByteBuffer;

    #@54
    move-result-object v10

    #@55
    .line 112
    .local v10, "bytes":Ljava/nio/ByteBuffer;
    invoke-static {v10}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    #@58
    move-result-object v15

    #@59
    .line 113
    .local v15, "response":Landroid/net/netlink/NetlinkMessage;
    if-eqz v15, :cond_2

    #@5b
    instance-of v4, v15, Landroid/net/netlink/NetlinkErrorMessage;

    #@5d
    if-eqz v4, :cond_2

    #@5f
    .line 114
    move-object v0, v15

    #@60
    check-cast v0, Landroid/net/netlink/NetlinkErrorMessage;

    #@62
    move-object v4, v0

    #@63
    invoke-virtual {v4}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    #@66
    move-result-object v4

    #@67
    if-eqz v4, :cond_2

    #@69
    .line 115
    move-object v0, v15

    #@6a
    check-cast v0, Landroid/net/netlink/NetlinkErrorMessage;

    #@6c
    move-object v4, v0

    #@6d
    invoke-virtual {v4}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    #@70
    move-result-object v4

    #@71
    iget v4, v4, Landroid/net/netlink/StructNlMsgErr;->error:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@73
    if-nez v4, :cond_2

    #@75
    .line 116
    const/16 v16, 0x1

    #@77
    .line 134
    :goto_0
    if-eqz v2, :cond_0

    #@79
    :try_start_2
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0

    #@7c
    :cond_0
    :goto_1
    if-eqz v17, :cond_1

    #@7e
    :try_start_3
    throw v17
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0

    #@7f
    .line 132
    .end local v10    # "bytes":Ljava/nio/ByteBuffer;
    .end local v15    # "response":Landroid/net/netlink/NetlinkMessage;
    :catch_0
    move-exception v11

    #@80
    .line 133
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "IpReachabilityMonitor"

    #@83
    new-instance v5, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v6, "Error "

    #@8b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v5

    #@93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v5

    #@97
    invoke-static {v4, v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9a
    .line 136
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    return v16

    #@9b
    .line 119
    .restart local v10    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v15    # "response":Landroid/net/netlink/NetlinkMessage;
    :cond_2
    if-nez v10, :cond_4

    #@9d
    .line 120
    :try_start_4
    const-string/jumbo v12, "null recvMessage"

    #@a0
    .line 130
    .local v12, "errmsg":Ljava/lang/String;
    :goto_2
    const-string/jumbo v4, "IpReachabilityMonitor"

    #@a3
    new-instance v5, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v6, "Error "

    #@ab
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v5

    #@af
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v5

    #@b3
    const-string/jumbo v6, ", errmsg="

    #@b6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v5

    #@ba
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v5

    #@be
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v5

    #@c2
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@c5
    goto :goto_0

    #@c6
    .line 134
    .end local v10    # "bytes":Ljava/nio/ByteBuffer;
    .end local v12    # "errmsg":Ljava/lang/String;
    .end local v15    # "response":Landroid/net/netlink/NetlinkMessage;
    :catch_1
    move-exception v4

    #@c7
    :goto_3
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@c8
    :catchall_0
    move-exception v5

    #@c9
    move-object/from16 v18, v5

    #@cb
    move-object v5, v4

    #@cc
    move-object/from16 v4, v18

    #@ce
    :goto_4
    if-eqz v2, :cond_3

    #@d0
    :try_start_6
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0

    #@d3
    :cond_3
    :goto_5
    if-eqz v5, :cond_7

    #@d5
    :try_start_7
    throw v5
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_0

    #@d6
    .line 121
    .restart local v10    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v15    # "response":Landroid/net/netlink/NetlinkMessage;
    :cond_4
    if-nez v15, :cond_5

    #@d8
    .line 122
    const/4 v4, 0x0

    #@d9
    :try_start_8
    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@dc
    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const-string/jumbo v5, "raw bytes: "

    #@e4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v4

    #@e8
    invoke-static {v10}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    #@eb
    move-result-object v5

    #@ec
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v4

    #@f0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v12

    #@f4
    .restart local v12    # "errmsg":Ljava/lang/String;
    goto :goto_2

    #@f5
    .line 128
    .end local v12    # "errmsg":Ljava/lang/String;
    :cond_5
    invoke-virtual {v15}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@f8
    move-result-object v12

    #@f9
    .restart local v12    # "errmsg":Ljava/lang/String;
    goto :goto_2

    #@fa
    .line 134
    .end local v12    # "errmsg":Ljava/lang/String;
    :catch_2
    move-exception v17

    #@fb
    goto :goto_1

    #@fc
    .end local v10    # "bytes":Ljava/nio/ByteBuffer;
    .end local v15    # "response":Landroid/net/netlink/NetlinkMessage;
    :catch_3
    move-exception v6

    #@fd
    if-nez v5, :cond_6

    #@ff
    move-object v5, v6

    #@100
    goto :goto_5

    #@101
    :cond_6
    if-eq v5, v6, :cond_3

    #@103
    :try_start_9
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@106
    goto :goto_5

    #@107
    :cond_7
    throw v4
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_0

    #@108
    .end local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .restart local v14    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :catchall_1
    move-exception v4

    #@109
    move-object/from16 v5, v17

    #@10b
    move-object v2, v14

    #@10c
    .restart local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    goto :goto_4

    #@10d
    .end local v14    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :catchall_2
    move-exception v4

    #@10e
    move-object/from16 v5, v17

    #@110
    goto :goto_4

    #@111
    .end local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .restart local v14    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :catch_4
    move-exception v4

    #@112
    move-object v2, v14

    #@113
    .restart local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    goto :goto_3
.end method

.method private stillRunning()Z
    .locals 2

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 192
    :try_start_0
    iget-boolean v1, p0, Landroid/net/IpReachabilityMonitor;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 191
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method


# virtual methods
.method public clearLinkProperties()V
    .locals 3

    #@0
    .prologue
    .line 247
    iget-object v1, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 248
    :try_start_0
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@5
    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    #@8
    .line 249
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@a
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@d
    .line 250
    iget v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchListVersion:I

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    iput v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchListVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 252
    const-string/jumbo v0, "IpReachabilityMonitor"

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "clear: "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor;->describeWatchList()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 246
    return-void

    #@33
    .line 247
    :catchall_0
    move-exception v0

    #@34
    monitor-exit v1

    #@35
    throw v0
.end method

.method public probeAll()V
    .locals 5

    #@0
    .prologue
    .line 290
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 291
    .local v0, "ipProbeList":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    iget-object v4, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v4

    #@8
    .line 292
    :try_start_0
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@a
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v4

    #@12
    .line 294
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v2

    #@16
    .local v2, "target$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/net/InetAddress;

    #@22
    .line 295
    .local v1, "target":Ljava/net/InetAddress;
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor;->stillRunning()Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_1

    #@28
    .line 289
    .end local v1    # "target":Ljava/net/InetAddress;
    :cond_0
    return-void

    #@29
    .line 291
    .end local v2    # "target$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@2a
    monitor-exit v4

    #@2b
    throw v3

    #@2c
    .line 298
    .restart local v1    # "target":Ljava/net/InetAddress;
    .restart local v2    # "target$iterator":Ljava/util/Iterator;
    :cond_1
    iget v3, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceIndex:I

    #@2e
    invoke-static {v3, v1}, Landroid/net/IpReachabilityMonitor;->probeNeighbor(ILjava/net/InetAddress;)Z

    #@31
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    const/4 v1, 0x0

    #@4
    :try_start_0
    iput-boolean v1, p0, Landroid/net/IpReachabilityMonitor;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 156
    invoke-virtual {p0}, Landroid/net/IpReachabilityMonitor;->clearLinkProperties()V

    #@a
    .line 157
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;

    #@c
    invoke-static {v0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->-wrap0(Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;)V

    #@f
    .line 154
    return-void

    #@10
    .line 155
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v0

    #@12
    throw v1
.end method

.method public updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 10
    .param p1, "lp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 213
    iget-object v7, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    #@2
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@5
    move-result-object v8

    #@6
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v7

    #@a
    if-nez v7, :cond_0

    #@c
    .line 215
    const-string/jumbo v7, "IpReachabilityMonitor"

    #@f
    new-instance v8, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v9, "requested LinkProperties interface \'"

    #@17
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v8

    #@1b
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@1e
    move-result-object v9

    #@1f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v8

    #@23
    .line 216
    const-string/jumbo v9, "\' does not match: "

    #@26
    .line 215
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v8

    #@2a
    .line 216
    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    #@2c
    .line 215
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v8

    #@30
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v8

    #@34
    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 217
    return-void

    #@38
    .line 220
    :cond_0
    iget-object v8, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@3a
    monitor-enter v8

    #@3b
    .line 221
    :try_start_0
    new-instance v7, Landroid/net/LinkProperties;

    #@3d
    invoke-direct {v7, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@40
    iput-object v7, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@42
    .line 222
    new-instance v3, Ljava/util/HashMap;

    #@44
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@47
    .line 224
    .local v3, "newIpWatchList":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    iget-object v7, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@49
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    #@4c
    move-result-object v6

    #@4d
    .line 225
    .local v6, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@50
    move-result-object v5

    #@51
    .local v5, "route$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@54
    move-result v7

    #@55
    if-eqz v7, :cond_2

    #@57
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5a
    move-result-object v4

    #@5b
    check-cast v4, Landroid/net/RouteInfo;

    #@5d
    .line 226
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->hasGateway()Z

    #@60
    move-result v7

    #@61
    if-eqz v7, :cond_1

    #@63
    .line 227
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@66
    move-result-object v0

    #@67
    .line 228
    .local v0, "gw":Ljava/net/InetAddress;
    invoke-static {v6, v0}, Landroid/net/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    #@6a
    move-result v7

    #@6b
    if-eqz v7, :cond_1

    #@6d
    .line 229
    invoke-direct {p0, v0}, Landroid/net/IpReachabilityMonitor;->getNeighborStateLocked(Ljava/net/InetAddress;)S

    #@70
    move-result v7

    #@71
    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@74
    move-result-object v7

    #@75
    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@78
    goto :goto_0

    #@79
    .line 220
    .end local v0    # "gw":Ljava/net/InetAddress;
    .end local v3    # "newIpWatchList":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v4    # "route":Landroid/net/RouteInfo;
    .end local v5    # "route$iterator":Ljava/util/Iterator;
    .end local v6    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :catchall_0
    move-exception v7

    #@7a
    monitor-exit v8

    #@7b
    throw v7

    #@7c
    .line 234
    .restart local v3    # "newIpWatchList":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .restart local v5    # "route$iterator":Ljava/util/Iterator;
    .restart local v6    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@7f
    move-result-object v7

    #@80
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@83
    move-result-object v2

    #@84
    .local v2, "nameserver$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@87
    move-result v7

    #@88
    if-eqz v7, :cond_4

    #@8a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8d
    move-result-object v1

    #@8e
    check-cast v1, Ljava/net/InetAddress;

    #@90
    .line 235
    .local v1, "nameserver":Ljava/net/InetAddress;
    invoke-static {v6, v1}, Landroid/net/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    #@93
    move-result v7

    #@94
    if-eqz v7, :cond_3

    #@96
    .line 236
    invoke-direct {p0, v1}, Landroid/net/IpReachabilityMonitor;->getNeighborStateLocked(Ljava/net/InetAddress;)S

    #@99
    move-result v7

    #@9a
    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@9d
    move-result-object v7

    #@9e
    invoke-interface {v3, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a1
    goto :goto_1

    #@a2
    .line 240
    .end local v1    # "nameserver":Ljava/net/InetAddress;
    :cond_4
    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@a4
    .line 241
    iget v7, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchListVersion:I

    #@a6
    add-int/lit8 v7, v7, 0x1

    #@a8
    iput v7, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchListVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@aa
    monitor-exit v8

    #@ab
    .line 243
    const-string/jumbo v7, "IpReachabilityMonitor"

    #@ae
    new-instance v8, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v9, "watch: "

    #@b6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v8

    #@ba
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor;->describeWatchList()Ljava/lang/String;

    #@bd
    move-result-object v9

    #@be
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v8

    #@c2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v8

    #@c6
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c9
    .line 212
    return-void
.end method
