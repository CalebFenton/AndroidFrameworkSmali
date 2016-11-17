.class public Landroid/net/ip/IpReachabilityMonitor;
.super Ljava/lang/Object;
.source "IpReachabilityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpReachabilityMonitor$Callback;,
        Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "IpReachabilityMonitor"

.field private static final VDBG:Z


# instance fields
.field private final mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

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

.field private final mNetlinkSocketObserver:Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

.field private final mObserverThread:Ljava/lang/Thread;

.field private mRunning:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Landroid/net/ip/IpReachabilityMonitor;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceIndex:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/net/ip/IpReachabilityMonitor;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/net/ip/IpReachabilityMonitor;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/net/ip/IpReachabilityMonitor;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/net/ip/IpReachabilityMonitor;->mRunning:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/net/ip/IpReachabilityMonitor;Ljava/net/InetAddress;)Z
    .locals 1
    .param p1, "ip"    # Ljava/net/InetAddress;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpReachabilityMonitor;->isWatching(Ljava/net/InetAddress;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/net/ip/IpReachabilityMonitor;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor;->stillRunning()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/net/ip/IpReachabilityMonitor;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpReachabilityMonitor;->handleNeighborLost(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpReachabilityMonitor$Callback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ip/IpReachabilityMonitor$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 147
    new-instance v3, Ljava/lang/Object;

    #@5
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@a
    .line 155
    new-instance v3, Landroid/net/LinkProperties;

    #@c
    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    #@f
    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@11
    .line 159
    new-instance v3, Ljava/util/HashMap;

    #@13
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@16
    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@18
    .line 221
    iput-object p2, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    #@1a
    .line 222
    const/4 v1, -0x1

    #@1b
    .line 224
    .local v1, "ifIndex":I
    :try_start_0
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@1e
    move-result-object v2

    #@1f
    .line 225
    .local v2, "netIf":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    #@22
    move-result v3

    #@23
    iput v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceIndex:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 229
    const-string/jumbo v3, "power"

    #@28
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Landroid/os/PowerManager;

    #@2e
    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v5, "IpReachabilityMonitor."

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    iget-object v5, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    const/4 v5, 0x1

    #@45
    .line 229
    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@48
    move-result-object v3

    #@49
    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@4b
    .line 231
    iput-object p3, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    #@4d
    .line 232
    new-instance v3, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

    #@4f
    const/4 v4, 0x0

    #@50
    invoke-direct {v3, p0, v4}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;-><init>(Landroid/net/ip/IpReachabilityMonitor;Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;)V

    #@53
    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

    #@55
    .line 233
    new-instance v3, Ljava/lang/Thread;

    #@57
    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

    #@59
    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@5c
    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mObserverThread:Ljava/lang/Thread;

    #@5e
    .line 234
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mObserverThread:Ljava/lang/Thread;

    #@60
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    #@63
    .line 220
    return-void

    #@64
    .line 226
    .end local v2    # "netIf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    #@65
    .line 227
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@67
    new-instance v4, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v5, "invalid interface \'"

    #@6f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    const-string/jumbo v5, "\': "

    #@7a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@85
    throw v3
.end method

.method private describeWatchList()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 246
    const-string/jumbo v0, ", "

    #@3
    .line 247
    .local v0, "delimiter":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    .line 248
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@a
    monitor-enter v6

    #@b
    .line 249
    :try_start_0
    const-string/jumbo v5, "iface{"

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v5

    #@12
    iget-object v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

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
    iget v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceIndex:I

    #@21
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    const-string/jumbo v7, "}, "

    #@28
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 250
    const-string/jumbo v5, "v{"

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    iget v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchListVersion:I

    #@34
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    const-string/jumbo v7, "}, "

    #@3b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 251
    const-string/jumbo v5, "ntable=["

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 252
    const/4 v3, 0x1

    #@45
    .line 253
    .local v3, "firstTime":Z
    iget-object v5, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

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
    .line 254
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    if-eqz v3, :cond_0

    #@5d
    .line 255
    const/4 v3, 0x0

    #@5e
    .line 259
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
    .line 260
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
    .line 259
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@84
    goto :goto_0

    #@85
    .line 248
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
    .line 257
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
    .line 262
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
    .line 264
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
    .line 289
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 290
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

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
    .line 292
    :cond_0
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method private getProbeWakeLockDuration()J
    .locals 8

    #@0
    .prologue
    .line 410
    const-wide/16 v2, 0x3

    #@2
    .line 411
    .local v2, "numUnicastProbes":J
    const-wide/16 v4, 0x3e8

    #@4
    .line 412
    .local v4, "retransTimeMs":J
    const-wide/16 v0, 0x1f4

    #@6
    .line 413
    .local v0, "gracePeriodMs":J
    const-wide/16 v6, 0xdac

    #@8
    return-wide v6
.end method

.method private handleNeighborLost(Ljava/lang/String;)V
    .locals 12
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 339
    const/4 v4, 0x0

    #@1
    .line 341
    .local v4, "ip":Ljava/net/InetAddress;
    iget-object v10, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v10

    #@4
    .line 342
    :try_start_0
    new-instance v8, Landroid/net/LinkProperties;

    #@6
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@8
    invoke-direct {v8, v9}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@b
    .line 344
    .local v8, "whatIfLp":Landroid/net/LinkProperties;
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

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
    .line 345
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
    .line 349
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
    .line 350
    .local v4, "ip":Ljava/net/InetAddress;
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

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
    .line 351
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
    .line 352
    invoke-virtual {v8, v6}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    goto :goto_1

    #@5b
    .line 341
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
    .line 355
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
    .line 358
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v4    # "ip":Ljava/net/InetAddress;
    .end local v7    # "route$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

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
    .line 361
    sget-object v9, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@6b
    if-ne v1, v9, :cond_5

    #@6d
    .line 362
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    #@6f
    invoke-static {v9}, Landroid/net/metrics/IpReachabilityEvent;->logProvisioningLost(Ljava/lang/String;)V

    #@72
    .line 363
    new-instance v9, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v10, "FAILURE: LOST_PROVISIONING, "

    #@7a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v9

    #@7e
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v9

    #@82
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v5

    #@86
    .line 364
    .local v5, "logMsg":Ljava/lang/String;
    const-string/jumbo v9, "IpReachabilityMonitor"

    #@89
    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8c
    .line 365
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    #@8e
    if-eqz v9, :cond_4

    #@90
    .line 368
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    #@92
    invoke-interface {v9, v4, v5}, Landroid/net/ip/IpReachabilityMonitor$Callback;->notifyLost(Ljava/net/InetAddress;Ljava/lang/String;)V

    #@95
    .line 338
    .end local v5    # "logMsg":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    #@96
    .line 371
    :cond_5
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    #@98
    invoke-static {v9}, Landroid/net/metrics/IpReachabilityEvent;->logNudFailed(Ljava/lang/String;)V

    #@9b
    goto :goto_2
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
    .line 280
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
    .line 281
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
    .line 282
    const/4 v2, 0x1

    #@1d
    return v2

    #@1e
    .line 285
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
    .line 268
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 269
    :try_start_0
    iget-boolean v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mRunning:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

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
    .line 268
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method private static probeNeighbor(ILjava/net/InetAddress;)I
    .locals 21
    .param p0, "ifIndex"    # I
    .param p1, "ip"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "probing ip="

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    const-string/jumbo v5, "%"

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    move/from16 v0, p0

    #@1d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v16

    #@25
    .line 177
    .local v16, "msgSnippet":Ljava/lang/String;
    const/4 v4, 0x1

    #@26
    const/16 v5, 0x10

    #@28
    const/4 v6, 0x0

    #@29
    .line 176
    move-object/from16 v0, p1

    #@2b
    move/from16 v1, p0

    #@2d
    invoke-static {v4, v0, v5, v1, v6}, Landroid/net/netlink/RtNetlinkNeighborMessage;->newNewNeighborMessage(ILjava/net/InetAddress;SI[B)[B

    #@30
    move-result-object v3

    #@31
    .line 179
    .local v3, "msg":[B
    sget v4, Landroid/system/OsConstants;->EPROTO:I

    #@33
    neg-int v15, v4

    #@34
    .line 180
    .local v15, "errno":I
    const/16 v19, 0x0

    #@36
    const/16 v17, 0x0

    #@38
    .local v17, "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :try_start_0
    new-instance v2, Landroid/net/netlink/NetlinkSocket;

    #@3a
    sget v4, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    #@3c
    invoke-direct {v2, v4}, Landroid/net/netlink/NetlinkSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3f
    .line 181
    .end local v17    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .local v2, "nlSocket":Landroid/net/netlink/NetlinkSocket;
    const-wide/16 v8, 0x12c

    #@41
    .line 182
    .local v8, "IO_TIMEOUT":J
    :try_start_1
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->connectToKernel()V

    #@44
    .line 183
    array-length v5, v3

    #@45
    const/4 v4, 0x0

    #@46
    const-wide/16 v6, 0x12c

    #@48
    invoke-virtual/range {v2 .. v7}, Landroid/net/netlink/NetlinkSocket;->sendMessage([BIIJ)Z

    #@4b
    .line 184
    const-wide/16 v4, 0x12c

    #@4d
    invoke-virtual {v2, v4, v5}, Landroid/net/netlink/NetlinkSocket;->recvMessage(J)Ljava/nio/ByteBuffer;

    #@50
    move-result-object v10

    #@51
    .line 186
    .local v10, "bytes":Ljava/nio/ByteBuffer;
    invoke-static {v10}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    #@54
    move-result-object v18

    #@55
    .line 187
    .local v18, "response":Landroid/net/netlink/NetlinkMessage;
    if-eqz v18, :cond_3

    #@57
    move-object/from16 v0, v18

    #@59
    instance-of v4, v0, Landroid/net/netlink/NetlinkErrorMessage;

    #@5b
    if-eqz v4, :cond_3

    #@5d
    .line 188
    move-object/from16 v0, v18

    #@5f
    check-cast v0, Landroid/net/netlink/NetlinkErrorMessage;

    #@61
    move-object v4, v0

    #@62
    invoke-virtual {v4}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    #@65
    move-result-object v4

    #@66
    if-eqz v4, :cond_3

    #@68
    .line 189
    move-object/from16 v0, v18

    #@6a
    check-cast v0, Landroid/net/netlink/NetlinkErrorMessage;

    #@6c
    move-object v4, v0

    #@6d
    invoke-virtual {v4}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    #@70
    move-result-object v4

    #@71
    iget v15, v4, Landroid/net/netlink/StructNlMsgErr;->error:I

    #@73
    .line 190
    if-eqz v15, :cond_0

    #@75
    .line 194
    const-string/jumbo v4, "IpReachabilityMonitor"

    #@78
    new-instance v5, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v6, "Error "

    #@80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v5

    #@84
    move-object/from16 v0, v16

    #@86
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v5

    #@8a
    const-string/jumbo v6, ", errmsg="

    #@8d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v5

    #@91
    invoke-virtual/range {v18 .. v18}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    #@94
    move-result-object v6

    #@95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v5

    #@99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v5

    #@9d
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@a0
    .line 215
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    #@a2
    :try_start_2
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_5

    #@a5
    :cond_1
    :goto_1
    if-eqz v19, :cond_2

    #@a7
    :try_start_3
    throw v19
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_5

    #@a8
    .line 206
    .end local v8    # "IO_TIMEOUT":J
    .end local v10    # "bytes":Ljava/nio/ByteBuffer;
    .end local v18    # "response":Landroid/net/netlink/NetlinkMessage;
    :catch_0
    move-exception v11

    #@a9
    .line 207
    .local v11, "e":Landroid/system/ErrnoException;
    const-string/jumbo v4, "IpReachabilityMonitor"

    #@ac
    new-instance v5, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v6, "Error "

    #@b4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v5

    #@b8
    move-object/from16 v0, v16

    #@ba
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v5

    #@be
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v5

    #@c2
    invoke-static {v4, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c5
    .line 208
    iget v4, v11, Landroid/system/ErrnoException;->errno:I

    #@c7
    neg-int v15, v4

    #@c8
    .line 216
    .end local v11    # "e":Landroid/system/ErrnoException;
    :cond_2
    :goto_2
    return v15

    #@c9
    .line 198
    .restart local v8    # "IO_TIMEOUT":J
    .restart local v10    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v18    # "response":Landroid/net/netlink/NetlinkMessage;
    :cond_3
    if-nez v18, :cond_5

    #@cb
    .line 199
    const/4 v4, 0x0

    #@cc
    :try_start_4
    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@cf
    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v5, "raw bytes: "

    #@d7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v4

    #@db
    invoke-static {v10}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    #@de
    move-result-object v5

    #@df
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v4

    #@e3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v14

    #@e7
    .line 204
    .local v14, "errmsg":Ljava/lang/String;
    :goto_3
    const-string/jumbo v4, "IpReachabilityMonitor"

    #@ea
    new-instance v5, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v6, "Error "

    #@f2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v5

    #@f6
    move-object/from16 v0, v16

    #@f8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v5

    #@fc
    const-string/jumbo v6, ", errmsg="

    #@ff
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v5

    #@103
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v5

    #@107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v5

    #@10b
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@10e
    goto :goto_0

    #@10f
    .line 215
    .end local v10    # "bytes":Ljava/nio/ByteBuffer;
    .end local v14    # "errmsg":Ljava/lang/String;
    .end local v18    # "response":Landroid/net/netlink/NetlinkMessage;
    :catch_1
    move-exception v4

    #@110
    .end local v8    # "IO_TIMEOUT":J
    :goto_4
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@111
    :catchall_0
    move-exception v5

    #@112
    move-object/from16 v20, v5

    #@114
    move-object v5, v4

    #@115
    move-object/from16 v4, v20

    #@117
    :goto_5
    if-eqz v2, :cond_4

    #@119
    :try_start_6
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_5

    #@11c
    :cond_4
    :goto_6
    if-eqz v5, :cond_7

    #@11e
    :try_start_7
    throw v5
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_5

    #@11f
    .line 209
    :catch_2
    move-exception v12

    #@120
    .line 210
    .local v12, "e":Ljava/io/InterruptedIOException;
    const-string/jumbo v4, "IpReachabilityMonitor"

    #@123
    new-instance v5, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    const-string/jumbo v6, "Error "

    #@12b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v5

    #@12f
    move-object/from16 v0, v16

    #@131
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v5

    #@135
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object v5

    #@139
    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13c
    .line 211
    sget v4, Landroid/system/OsConstants;->ETIMEDOUT:I

    #@13e
    neg-int v15, v4

    #@13f
    goto :goto_2

    #@140
    .line 202
    .end local v12    # "e":Ljava/io/InterruptedIOException;
    .restart local v8    # "IO_TIMEOUT":J
    .restart local v10    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v18    # "response":Landroid/net/netlink/NetlinkMessage;
    :cond_5
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@143
    move-result-object v14

    #@144
    .restart local v14    # "errmsg":Ljava/lang/String;
    goto :goto_3

    #@145
    .line 215
    .end local v14    # "errmsg":Ljava/lang/String;
    :catch_3
    move-exception v19

    #@146
    goto/16 :goto_1

    #@148
    .end local v8    # "IO_TIMEOUT":J
    .end local v10    # "bytes":Ljava/nio/ByteBuffer;
    .end local v18    # "response":Landroid/net/netlink/NetlinkMessage;
    :catch_4
    move-exception v6

    #@149
    if-nez v5, :cond_6

    #@14b
    move-object v5, v6

    #@14c
    goto :goto_6

    #@14d
    :cond_6
    if-eq v5, v6, :cond_4

    #@14f
    :try_start_9
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_5

    #@152
    goto :goto_6

    #@153
    .line 212
    :catch_5
    move-exception v13

    #@154
    .line 213
    .local v13, "e":Ljava/net/SocketException;
    const-string/jumbo v4, "IpReachabilityMonitor"

    #@157
    new-instance v5, Ljava/lang/StringBuilder;

    #@159
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@15c
    const-string/jumbo v6, "Error "

    #@15f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v5

    #@163
    move-object/from16 v0, v16

    #@165
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v5

    #@169
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16c
    move-result-object v5

    #@16d
    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@170
    .line 214
    sget v4, Landroid/system/OsConstants;->EIO:I

    #@172
    neg-int v15, v4

    #@173
    goto/16 :goto_2

    #@175
    .line 215
    .end local v13    # "e":Ljava/net/SocketException;
    :cond_7
    :try_start_a
    throw v4
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_5

    #@176
    .end local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .restart local v17    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :catchall_1
    move-exception v4

    #@177
    move-object/from16 v5, v19

    #@179
    move-object/from16 v2, v17

    #@17b
    .restart local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    goto :goto_5

    #@17c
    .end local v17    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .restart local v8    # "IO_TIMEOUT":J
    :catchall_2
    move-exception v4

    #@17d
    move-object/from16 v5, v19

    #@17f
    goto :goto_5

    #@180
    .end local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .end local v8    # "IO_TIMEOUT":J
    .restart local v17    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :catch_6
    move-exception v4

    #@181
    move-object/from16 v2, v17

    #@183
    .restart local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    goto :goto_4
.end method

.method private stillRunning()Z
    .locals 2

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 275
    :try_start_0
    iget-boolean v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 274
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method


# virtual methods
.method public clearLinkProperties()V
    .locals 2

    #@0
    .prologue
    .line 330
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 331
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@5
    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    #@8
    .line 332
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@a
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@d
    .line 333
    iget v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchListVersion:I

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    iput v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchListVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 329
    return-void

    #@15
    .line 330
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public probeAll()V
    .locals 8

    #@0
    .prologue
    .line 376
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 377
    .local v0, "ipProbeList":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    iget-object v5, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v5

    #@8
    .line 378
    :try_start_0
    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@a
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@d
    move-result-object v4

    #@e
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v5

    #@12
    .line 381
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@15
    move-result v4

    #@16
    if-nez v4, :cond_0

    #@18
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor;->stillRunning()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 388
    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@20
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor;->getProbeWakeLockDuration()J

    #@23
    move-result-wide v6

    #@24
    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    #@27
    .line 391
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v3

    #@2b
    .local v3, "target$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_1

    #@31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Ljava/net/InetAddress;

    #@37
    .line 392
    .local v2, "target":Ljava/net/InetAddress;
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor;->stillRunning()Z

    #@3a
    move-result v4

    #@3b
    if-nez v4, :cond_2

    #@3d
    .line 375
    .end local v2    # "target":Ljava/net/InetAddress;
    :cond_1
    return-void

    #@3e
    .line 377
    .end local v3    # "target$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@3f
    monitor-exit v5

    #@40
    throw v4

    #@41
    .line 395
    .restart local v2    # "target":Ljava/net/InetAddress;
    .restart local v3    # "target$iterator":Ljava/util/Iterator;
    :cond_2
    iget v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceIndex:I

    #@43
    invoke-static {v4, v2}, Landroid/net/ip/IpReachabilityMonitor;->probeNeighbor(ILjava/net/InetAddress;)I

    #@46
    move-result v1

    #@47
    .line 396
    .local v1, "returnValue":I
    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    #@49
    invoke-static {v4, v1}, Landroid/net/metrics/IpReachabilityEvent;->logProbeEvent(Ljava/lang/String;I)V

    #@4c
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    const/4 v1, 0x0

    #@4
    :try_start_0
    iput-boolean v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 239
    invoke-virtual {p0}, Landroid/net/ip/IpReachabilityMonitor;->clearLinkProperties()V

    #@a
    .line 240
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

    #@c
    invoke-static {v0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->-wrap0(Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;)V

    #@f
    .line 237
    return-void

    #@10
    .line 238
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
    .line 296
    iget-object v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

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
    .line 298
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
    .line 299
    const-string/jumbo v9, "\' does not match: "

    #@26
    .line 298
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v8

    #@2a
    .line 299
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    #@2c
    .line 298
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
    .line 300
    return-void

    #@38
    .line 303
    :cond_0
    iget-object v8, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@3a
    monitor-enter v8

    #@3b
    .line 304
    :try_start_0
    new-instance v7, Landroid/net/LinkProperties;

    #@3d
    invoke-direct {v7, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@40
    iput-object v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@42
    .line 305
    new-instance v3, Ljava/util/HashMap;

    #@44
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@47
    .line 307
    .local v3, "newIpWatchList":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    iget-object v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@49
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    #@4c
    move-result-object v6

    #@4d
    .line 308
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
    .line 309
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->hasGateway()Z

    #@60
    move-result v7

    #@61
    if-eqz v7, :cond_1

    #@63
    .line 310
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@66
    move-result-object v0

    #@67
    .line 311
    .local v0, "gw":Ljava/net/InetAddress;
    invoke-static {v6, v0}, Landroid/net/ip/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    #@6a
    move-result v7

    #@6b
    if-eqz v7, :cond_1

    #@6d
    .line 312
    invoke-direct {p0, v0}, Landroid/net/ip/IpReachabilityMonitor;->getNeighborStateLocked(Ljava/net/InetAddress;)S

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
    .line 303
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
    .line 317
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
    .line 318
    .local v1, "nameserver":Ljava/net/InetAddress;
    invoke-static {v6, v1}, Landroid/net/ip/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    #@93
    move-result v7

    #@94
    if-eqz v7, :cond_3

    #@96
    .line 319
    invoke-direct {p0, v1}, Landroid/net/ip/IpReachabilityMonitor;->getNeighborStateLocked(Ljava/net/InetAddress;)S

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
    .line 323
    .end local v1    # "nameserver":Ljava/net/InetAddress;
    :cond_4
    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@a4
    .line 324
    iget v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchListVersion:I

    #@a6
    add-int/lit8 v7, v7, 0x1

    #@a8
    iput v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchListVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@aa
    monitor-exit v8

    #@ab
    .line 295
    return-void
.end method
