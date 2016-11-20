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
.field private final mAvoidBadWifiTracker:Landroid/net/util/AvoidBadWifiTracker;

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

.field private volatile mLastProbeTimeMs:J

.field private mLinkProperties:Landroid/net/LinkProperties;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ip/IpReachabilityMonitor$Callback;

    #@0
    .prologue
    .line 226
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/ip/IpReachabilityMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpReachabilityMonitor$Callback;Landroid/net/util/AvoidBadWifiTracker;)V

    #@4
    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpReachabilityMonitor$Callback;Landroid/net/util/AvoidBadWifiTracker;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ip/IpReachabilityMonitor$Callback;
    .param p4, "tracker"    # Landroid/net/util/AvoidBadWifiTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 149
    new-instance v3, Ljava/lang/Object;

    #@5
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@a
    .line 157
    new-instance v3, Landroid/net/metrics/IpConnectivityLog;

    #@c
    invoke-direct {v3}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    #@f
    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@11
    .line 159
    new-instance v3, Landroid/net/LinkProperties;

    #@13
    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    #@16
    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@18
    .line 163
    new-instance v3, Ljava/util/HashMap;

    #@1a
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@1d
    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@1f
    .line 231
    iput-object p2, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    #@21
    .line 232
    const/4 v1, -0x1

    #@22
    .line 234
    .local v1, "ifIndex":I
    :try_start_0
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@25
    move-result-object v2

    #@26
    .line 235
    .local v2, "netIf":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    #@29
    move-result v3

    #@2a
    iput v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceIndex:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 239
    const-string/jumbo v3, "power"

    #@2f
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@32
    move-result-object v3

    #@33
    check-cast v3, Landroid/os/PowerManager;

    #@35
    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v5, "IpReachabilityMonitor."

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    iget-object v5, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    const/4 v5, 0x1

    #@4c
    .line 239
    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@4f
    move-result-object v3

    #@50
    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@52
    .line 241
    iput-object p3, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    #@54
    .line 242
    iput-object p4, p0, Landroid/net/ip/IpReachabilityMonitor;->mAvoidBadWifiTracker:Landroid/net/util/AvoidBadWifiTracker;

    #@56
    .line 243
    new-instance v3, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

    #@58
    const/4 v4, 0x0

    #@59
    invoke-direct {v3, p0, v4}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;-><init>(Landroid/net/ip/IpReachabilityMonitor;Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;)V

    #@5c
    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

    #@5e
    .line 244
    new-instance v3, Ljava/lang/Thread;

    #@60
    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

    #@62
    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@65
    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mObserverThread:Ljava/lang/Thread;

    #@67
    .line 245
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mObserverThread:Ljava/lang/Thread;

    #@69
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    #@6c
    .line 230
    return-void

    #@6d
    .line 236
    .end local v2    # "netIf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    #@6e
    .line 237
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@70
    new-instance v4, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v5, "invalid interface \'"

    #@78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    const-string/jumbo v5, "\': "

    #@83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v4

    #@87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v4

    #@8b
    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8e
    throw v3
.end method

.method private avoidingBadLinks()Z
    .locals 1

    #@0
    .prologue
    .line 389
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mAvoidBadWifiTracker:Landroid/net/util/AvoidBadWifiTracker;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mAvoidBadWifiTracker:Landroid/net/util/AvoidBadWifiTracker;

    #@6
    invoke-virtual {v0}, Landroid/net/util/AvoidBadWifiTracker;->currentValue()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method private describeWatchList()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 257
    const-string/jumbo v0, ", "

    #@3
    .line 258
    .local v0, "delimiter":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    .line 259
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@a
    monitor-enter v6

    #@b
    .line 260
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
    .line 261
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
    .line 262
    const-string/jumbo v5, "ntable=["

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 263
    const/4 v3, 0x1

    #@45
    .line 264
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
    .line 265
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    if-eqz v3, :cond_0

    #@5d
    .line 266
    const/4 v3, 0x0

    #@5e
    .line 270
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
    .line 271
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
    .line 270
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@84
    goto :goto_0

    #@85
    .line 259
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
    .line 268
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
    .line 273
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
    .line 275
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
    .line 300
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 301
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
    .line 303
    :cond_0
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method private static getProbeWakeLockDuration()J
    .locals 8

    #@0
    .prologue
    .line 428
    const-wide/16 v2, 0x3

    #@2
    .line 429
    .local v2, "numUnicastProbes":J
    const-wide/16 v4, 0x3e8

    #@4
    .line 430
    .local v4, "retransTimeMs":J
    const-wide/16 v0, 0x1f4

    #@6
    .line 431
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
    .line 350
    const/4 v4, 0x0

    #@1
    .line 352
    .local v4, "ip":Ljava/net/InetAddress;
    iget-object v10, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v10

    #@4
    .line 353
    :try_start_0
    new-instance v8, Landroid/net/LinkProperties;

    #@6
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@8
    invoke-direct {v8, v9}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@b
    .line 355
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
    if-eqz v9, :cond_4

    #@1b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Ljava/util/Map$Entry;

    #@21
    .line 356
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
    .line 360
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
    .line 361
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
    .line 362
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
    .line 363
    invoke-virtual {v8, v6}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    goto :goto_1

    #@5b
    .line 352
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
    .line 367
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    .restart local v4    # "ip":Ljava/net/InetAddress;
    .restart local v7    # "route$iterator":Ljava/util/Iterator;
    .restart local v8    # "whatIfLp":Landroid/net/LinkProperties;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor;->avoidingBadLinks()Z

    #@61
    move-result v9

    #@62
    if-nez v9, :cond_3

    #@64
    instance-of v9, v4, Ljava/net/Inet6Address;

    #@66
    if-nez v9, :cond_0

    #@68
    .line 369
    :cond_3
    invoke-virtual {v8, v4}, Landroid/net/LinkProperties;->removeDnsServer(Ljava/net/InetAddress;)Z

    #@6b
    goto :goto_0

    #@6c
    .line 373
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v4    # "ip":Ljava/net/InetAddress;
    .end local v7    # "route$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@6e
    invoke-static {v9, v8}, Landroid/net/LinkProperties;->compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@71
    move-result-object v1

    #@72
    .local v1, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    monitor-exit v10

    #@73
    .line 376
    sget-object v9, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@75
    if-ne v1, v9, :cond_5

    #@77
    .line 377
    new-instance v9, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v10, "FAILURE: LOST_PROVISIONING, "

    #@7f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v9

    #@83
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v9

    #@87
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v5

    #@8b
    .line 378
    .local v5, "logMsg":Ljava/lang/String;
    const-string/jumbo v9, "IpReachabilityMonitor"

    #@8e
    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    .line 379
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    #@93
    if-eqz v9, :cond_5

    #@95
    .line 382
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    #@97
    invoke-interface {v9, v4, v5}, Landroid/net/ip/IpReachabilityMonitor$Callback;->notifyLost(Ljava/net/InetAddress;Ljava/lang/String;)V

    #@9a
    .line 385
    .end local v5    # "logMsg":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v1}, Landroid/net/ip/IpReachabilityMonitor;->logNudFailed(Landroid/net/LinkProperties$ProvisioningChange;)V

    #@9d
    .line 349
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
    .line 291
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
    .line 292
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
    .line 293
    const/4 v2, 0x1

    #@1d
    return v2

    #@1e
    .line 296
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
    .line 279
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 280
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
    .line 279
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method private logEvent(II)V
    .locals 4
    .param p1, "probeType"    # I
    .param p2, "errorCode"    # I

    #@0
    .prologue
    .line 435
    and-int/lit16 v1, p2, 0xff

    #@2
    or-int v0, p1, v1

    #@4
    .line 436
    .local v0, "eventType":I
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@6
    new-instance v2, Landroid/net/metrics/IpReachabilityEvent;

    #@8
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    #@a
    invoke-direct {v2, v3, v0}, Landroid/net/metrics/IpReachabilityEvent;-><init>(Ljava/lang/String;I)V

    #@d
    invoke-virtual {v1, v2}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    #@10
    .line 434
    return-void
.end method

.method private logNudFailed(Landroid/net/LinkProperties$ProvisioningChange;)V
    .locals 10
    .param p1, "delta"    # Landroid/net/LinkProperties$ProvisioningChange;

    #@0
    .prologue
    .line 440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v6

    #@4
    iget-wide v8, p0, Landroid/net/ip/IpReachabilityMonitor;->mLastProbeTimeMs:J

    #@6
    sub-long v0, v6, v8

    #@8
    .line 441
    .local v0, "duration":J
    invoke-static {}, Landroid/net/ip/IpReachabilityMonitor;->getProbeWakeLockDuration()J

    #@b
    move-result-wide v6

    #@c
    cmp-long v5, v0, v6

    #@e
    if-gez v5, :cond_0

    #@10
    const/4 v3, 0x1

    #@11
    .line 442
    .local v3, "isFromProbe":Z
    :goto_0
    sget-object v5, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@13
    if-ne p1, v5, :cond_1

    #@15
    const/4 v4, 0x1

    #@16
    .line 443
    .local v4, "isProvisioningLost":Z
    :goto_1
    invoke-static {v3, v4}, Landroid/net/metrics/IpReachabilityEvent;->nudFailureEventType(ZZ)I

    #@19
    move-result v2

    #@1a
    .line 444
    .local v2, "eventType":I
    iget-object v5, p0, Landroid/net/ip/IpReachabilityMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@1c
    new-instance v6, Landroid/net/metrics/IpReachabilityEvent;

    #@1e
    iget-object v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    #@20
    invoke-direct {v6, v7, v2}, Landroid/net/metrics/IpReachabilityEvent;-><init>(Ljava/lang/String;I)V

    #@23
    invoke-virtual {v5, v6}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    #@26
    .line 439
    return-void

    #@27
    .line 441
    .end local v2    # "eventType":I
    .end local v3    # "isFromProbe":Z
    .end local v4    # "isProvisioningLost":Z
    :cond_0
    const/4 v3, 0x0

    #@28
    .restart local v3    # "isFromProbe":Z
    goto :goto_0

    #@29
    .line 442
    :cond_1
    const/4 v4, 0x0

    #@2a
    goto :goto_1
.end method

.method private static probeNeighbor(ILjava/net/InetAddress;)I
    .locals 21
    .param p0, "ifIndex"    # I
    .param p1, "ip"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 179
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
    .line 183
    .local v16, "msgSnippet":Ljava/lang/String;
    const/4 v4, 0x1

    #@26
    const/16 v5, 0x10

    #@28
    const/4 v6, 0x0

    #@29
    .line 182
    move-object/from16 v0, p1

    #@2b
    move/from16 v1, p0

    #@2d
    invoke-static {v4, v0, v5, v1, v6}, Landroid/net/netlink/RtNetlinkNeighborMessage;->newNewNeighborMessage(ILjava/net/InetAddress;SI[B)[B

    #@30
    move-result-object v3

    #@31
    .line 185
    .local v3, "msg":[B
    sget v4, Landroid/system/OsConstants;->EPROTO:I

    #@33
    neg-int v15, v4

    #@34
    .line 186
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
    .line 187
    .end local v17    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .local v2, "nlSocket":Landroid/net/netlink/NetlinkSocket;
    const-wide/16 v8, 0x12c

    #@41
    .line 188
    .local v8, "IO_TIMEOUT":J
    :try_start_1
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->connectToKernel()V

    #@44
    .line 189
    array-length v5, v3

    #@45
    const/4 v4, 0x0

    #@46
    const-wide/16 v6, 0x12c

    #@48
    invoke-virtual/range {v2 .. v7}, Landroid/net/netlink/NetlinkSocket;->sendMessage([BIIJ)Z

    #@4b
    .line 190
    const-wide/16 v4, 0x12c

    #@4d
    invoke-virtual {v2, v4, v5}, Landroid/net/netlink/NetlinkSocket;->recvMessage(J)Ljava/nio/ByteBuffer;

    #@50
    move-result-object v10

    #@51
    .line 192
    .local v10, "bytes":Ljava/nio/ByteBuffer;
    invoke-static {v10}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    #@54
    move-result-object v18

    #@55
    .line 193
    .local v18, "response":Landroid/net/netlink/NetlinkMessage;
    if-eqz v18, :cond_3

    #@57
    move-object/from16 v0, v18

    #@59
    instance-of v4, v0, Landroid/net/netlink/NetlinkErrorMessage;

    #@5b
    if-eqz v4, :cond_3

    #@5d
    .line 194
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
    .line 195
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
    .line 196
    if-eqz v15, :cond_0

    #@75
    .line 200
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
    .line 221
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
    .line 212
    .end local v8    # "IO_TIMEOUT":J
    .end local v10    # "bytes":Ljava/nio/ByteBuffer;
    .end local v18    # "response":Landroid/net/netlink/NetlinkMessage;
    :catch_0
    move-exception v11

    #@a9
    .line 213
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
    .line 214
    iget v4, v11, Landroid/system/ErrnoException;->errno:I

    #@c7
    neg-int v15, v4

    #@c8
    .line 222
    .end local v11    # "e":Landroid/system/ErrnoException;
    :cond_2
    :goto_2
    return v15

    #@c9
    .line 204
    .restart local v8    # "IO_TIMEOUT":J
    .restart local v10    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v18    # "response":Landroid/net/netlink/NetlinkMessage;
    :cond_3
    if-nez v18, :cond_5

    #@cb
    .line 205
    const/4 v4, 0x0

    #@cc
    :try_start_4
    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@cf
    .line 206
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
    .line 210
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
    .line 221
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
    .line 215
    :catch_2
    move-exception v12

    #@120
    .line 216
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
    .line 217
    sget v4, Landroid/system/OsConstants;->ETIMEDOUT:I

    #@13e
    neg-int v15, v4

    #@13f
    goto :goto_2

    #@140
    .line 208
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
    .line 221
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
    .line 218
    :catch_5
    move-exception v13

    #@154
    .line 219
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
    .line 220
    sget v4, Landroid/system/OsConstants;->EIO:I

    #@172
    neg-int v15, v4

    #@173
    goto/16 :goto_2

    #@175
    .line 221
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
    .line 285
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 286
    :try_start_0
    iget-boolean v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 285
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
    .line 341
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 342
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@5
    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    #@8
    .line 343
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@a
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@d
    .line 344
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
    .line 340
    return-void

    #@15
    .line 341
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
    .line 393
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 394
    .local v0, "ipProbeList":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    iget-object v5, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v5

    #@8
    .line 395
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
    .line 398
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
    .line 405
    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@20
    invoke-static {}, Landroid/net/ip/IpReachabilityMonitor;->getProbeWakeLockDuration()J

    #@23
    move-result-wide v6

    #@24
    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    #@27
    .line 408
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
    .line 409
    .local v2, "target":Ljava/net/InetAddress;
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor;->stillRunning()Z

    #@3a
    move-result v4

    #@3b
    if-nez v4, :cond_2

    #@3d
    .line 415
    .end local v2    # "target":Ljava/net/InetAddress;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@40
    move-result-wide v4

    #@41
    iput-wide v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mLastProbeTimeMs:J

    #@43
    .line 392
    return-void

    #@44
    .line 394
    .end local v3    # "target$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@45
    monitor-exit v5

    #@46
    throw v4

    #@47
    .line 412
    .restart local v2    # "target":Ljava/net/InetAddress;
    .restart local v3    # "target$iterator":Ljava/util/Iterator;
    :cond_2
    iget v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceIndex:I

    #@49
    invoke-static {v4, v2}, Landroid/net/ip/IpReachabilityMonitor;->probeNeighbor(ILjava/net/InetAddress;)I

    #@4c
    move-result v1

    #@4d
    .line 413
    .local v1, "returnValue":I
    const/16 v4, 0x100

    #@4f
    invoke-direct {p0, v4, v1}, Landroid/net/ip/IpReachabilityMonitor;->logEvent(II)V

    #@52
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    .line 249
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
    .line 250
    invoke-virtual {p0}, Landroid/net/ip/IpReachabilityMonitor;->clearLinkProperties()V

    #@a
    .line 251
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

    #@c
    invoke-static {v0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->-wrap0(Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;)V

    #@f
    .line 248
    return-void

    #@10
    .line 249
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
    .line 307
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
    .line 309
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
    .line 310
    const-string/jumbo v9, "\' does not match: "

    #@26
    .line 309
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v8

    #@2a
    .line 310
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    #@2c
    .line 309
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
    .line 311
    return-void

    #@38
    .line 314
    :cond_0
    iget-object v8, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    #@3a
    monitor-enter v8

    #@3b
    .line 315
    :try_start_0
    new-instance v7, Landroid/net/LinkProperties;

    #@3d
    invoke-direct {v7, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@40
    iput-object v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@42
    .line 316
    new-instance v3, Ljava/util/HashMap;

    #@44
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@47
    .line 318
    .local v3, "newIpWatchList":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    iget-object v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    #@49
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    #@4c
    move-result-object v6

    #@4d
    .line 319
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
    .line 320
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->hasGateway()Z

    #@60
    move-result v7

    #@61
    if-eqz v7, :cond_1

    #@63
    .line 321
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@66
    move-result-object v0

    #@67
    .line 322
    .local v0, "gw":Ljava/net/InetAddress;
    invoke-static {v6, v0}, Landroid/net/ip/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    #@6a
    move-result v7

    #@6b
    if-eqz v7, :cond_1

    #@6d
    .line 323
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
    .line 314
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
    .line 328
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
    .line 329
    .local v1, "nameserver":Ljava/net/InetAddress;
    invoke-static {v6, v1}, Landroid/net/ip/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    #@93
    move-result v7

    #@94
    if-eqz v7, :cond_3

    #@96
    .line 330
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
    .line 334
    .end local v1    # "nameserver":Ljava/net/InetAddress;
    :cond_4
    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    #@a4
    .line 335
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
    .line 306
    return-void
.end method
