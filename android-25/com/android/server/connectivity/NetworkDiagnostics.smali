.class public Lcom/android/server/connectivity/NetworkDiagnostics;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;,
        Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;,
        Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics"

.field private static final TEST_DNS4:Ljava/net/InetAddress;

.field private static final TEST_DNS6:Ljava/net/InetAddress;


# instance fields
.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mDeadlineTime:J

.field private final mDescription:Ljava/lang/String;

.field private final mDnsUdpChecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private final mExplicitSourceIcmpChecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            ">;",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private final mIcmpChecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterfaceIndex:Ljava/lang/Integer;

.field private final mLinkProperties:Landroid/net/LinkProperties;

.field private final mNetwork:Landroid/net/Network;

.field private final mStartTime:J

.field private final mTimeoutMs:J


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/NetworkDiagnostics;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/lang/Integer;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/NetworkDiagnostics;)Landroid/net/Network;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0()J
    .locals 2

    #@0
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->now()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 87
    const-string/jumbo v0, "8.8.8.8"

    #@3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    #@9
    .line 89
    const-string/jumbo v0, "2001:4860:4860::8888"

    #@c
    .line 88
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    #@12
    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/net/Network;Landroid/net/LinkProperties;J)V
    .locals 11
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "timeoutMs"    # J

    #@0
    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 161
    new-instance v5, Ljava/util/HashMap;

    #@5
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    #@a
    .line 163
    new-instance v5, Ljava/util/HashMap;

    #@c
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 162
    iput-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    #@11
    .line 164
    new-instance v5, Ljava/util/HashMap;

    #@13
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@16
    iput-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    #@18
    .line 169
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    #@1a
    .line 170
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@1c
    .line 171
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@1e
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkDiagnostics;->getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@25
    move-result-object v5

    #@26
    iput-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;

    #@28
    .line 172
    iput-wide p3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mTimeoutMs:J

    #@2a
    .line 173
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->now()J

    #@2d
    move-result-wide v6

    #@2e
    iput-wide v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mStartTime:J

    #@30
    .line 174
    iget-wide v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mStartTime:J

    #@32
    iget-wide v8, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mTimeoutMs:J

    #@34
    add-long/2addr v6, v8

    #@35
    iput-wide v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J

    #@37
    .line 181
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@39
    sget-object v6, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    #@3b
    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    #@3e
    move-result v5

    #@3f
    if-eqz v5, :cond_0

    #@41
    .line 182
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@43
    sget-object v6, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    #@45
    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    #@48
    .line 187
    :cond_0
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@4a
    invoke-virtual {v5}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    #@4d
    move-result v5

    #@4e
    if-nez v5, :cond_1

    #@50
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@52
    invoke-virtual {v5}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    #@55
    move-result v5

    #@56
    if-eqz v5, :cond_2

    #@58
    .line 188
    :cond_1
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@5a
    sget-object v6, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    #@5c
    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    #@5f
    .line 191
    :cond_2
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@61
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    #@64
    move-result-object v5

    #@65
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@68
    move-result-object v4

    #@69
    .local v4, "route$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@6c
    move-result v5

    #@6d
    if-eqz v5, :cond_4

    #@6f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@72
    move-result-object v3

    #@73
    check-cast v3, Landroid/net/RouteInfo;

    #@75
    .line 192
    .local v3, "route":Landroid/net/RouteInfo;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->hasGateway()Z

    #@78
    move-result v5

    #@79
    if-eqz v5, :cond_3

    #@7b
    .line 193
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@7e
    move-result-object v0

    #@7f
    .line 194
    .local v0, "gateway":Ljava/net/InetAddress;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareIcmpMeasurement(Ljava/net/InetAddress;)V

    #@82
    .line 195
    invoke-virtual {v3}, Landroid/net/RouteInfo;->isIPv6Default()Z

    #@85
    move-result v5

    #@86
    if-eqz v5, :cond_3

    #@88
    .line 196
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareExplicitSourceIcmpMeasurements(Ljava/net/InetAddress;)V

    #@8b
    goto :goto_0

    #@8c
    .line 200
    .end local v0    # "gateway":Ljava/net/InetAddress;
    .end local v3    # "route":Landroid/net/RouteInfo;
    :cond_4
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@8e
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@91
    move-result-object v5

    #@92
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@95
    move-result-object v2

    #@96
    .local v2, "nameserver$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@99
    move-result v5

    #@9a
    if-eqz v5, :cond_5

    #@9c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9f
    move-result-object v1

    #@a0
    check-cast v1, Ljava/net/InetAddress;

    #@a2
    .line 201
    .local v1, "nameserver":Ljava/net/InetAddress;
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareIcmpMeasurement(Ljava/net/InetAddress;)V

    #@a5
    .line 202
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareDnsMeasurement(Ljava/net/InetAddress;)V

    #@a8
    goto :goto_1

    #@a9
    .line 205
    .end local v1    # "nameserver":Ljava/net/InetAddress;
    :cond_5
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    #@ab
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->totalMeasurementCount()I

    #@ae
    move-result v6

    #@af
    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@b2
    iput-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    #@b4
    .line 207
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->startMeasurements()V

    #@b7
    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v6, "ifaces{"

    #@bf
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v5

    #@c3
    const-string/jumbo v6, ","

    #@c6
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@c8
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    #@cb
    move-result-object v7

    #@cc
    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@cf
    move-result-object v6

    #@d0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v5

    #@d4
    const-string/jumbo v6, "}"

    #@d7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v5

    #@db
    .line 210
    const-string/jumbo v6, " index{"

    #@de
    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v5

    #@e2
    .line 210
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;

    #@e4
    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v5

    #@e8
    .line 210
    const-string/jumbo v6, "}"

    #@eb
    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v5

    #@ef
    .line 211
    const-string/jumbo v6, " network{"

    #@f2
    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v5

    #@f6
    .line 211
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    #@f8
    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v5

    #@fc
    .line 211
    const-string/jumbo v6, "}"

    #@ff
    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v5

    #@103
    .line 212
    const-string/jumbo v6, " nethandle{"

    #@106
    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v5

    #@10a
    .line 212
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    #@10c
    invoke-virtual {v6}, Landroid/net/Network;->getNetworkHandle()J

    #@10f
    move-result-wide v6

    #@110
    .line 209
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@113
    move-result-object v5

    #@114
    .line 212
    const-string/jumbo v6, "}"

    #@117
    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v5

    #@11b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v5

    #@11f
    iput-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDescription:Ljava/lang/String;

    #@121
    .line 168
    return-void
.end method

.method private static getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "ifname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 217
    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@3
    move-result-object v1

    #@4
    .line 218
    .local v1, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getIndex()I

    #@7
    move-result v2

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 219
    .end local v1    # "ni":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    #@e
    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    #@f
    return-object v2
.end method

.method private static final now()J
    .locals 2

    #@0
    .prologue
    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method private prepareDnsMeasurement(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "target"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 248
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@a
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V

    #@d
    .line 249
    .local v0, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    new-instance v1, Ljava/lang/Thread;

    #@f
    new-instance v2, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;

    #@11
    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    #@14
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@17
    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    #@19
    .line 250
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    #@1b
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 246
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_0
    return-void
.end method

.method private prepareExplicitSourceIcmpMeasurements(Ljava/net/InetAddress;)V
    .locals 7
    .param p1, "target"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 233
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@2
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    #@5
    move-result-object v5

    #@6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/net/LinkAddress;

    #@16
    .line 234
    .local v0, "l":Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@19
    move-result-object v3

    #@1a
    .line 235
    .local v3, "source":Ljava/net/InetAddress;
    instance-of v5, v3, Ljava/net/Inet6Address;

    #@1c
    if-eqz v5, :cond_0

    #@1e
    invoke-virtual {v0}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_0

    #@24
    .line 236
    new-instance v4, Landroid/util/Pair;

    #@26
    invoke-direct {v4, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@29
    .line 237
    .local v4, "srcTarget":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;"
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    #@2b
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@2e
    move-result v5

    #@2f
    if-nez v5, :cond_0

    #@31
    .line 238
    new-instance v2, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@33
    invoke-direct {v2, p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V

    #@36
    .line 239
    .local v2, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    new-instance v5, Ljava/lang/Thread;

    #@38
    new-instance v6, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;

    #@3a
    invoke-direct {v6, p0, v3, p1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    #@3d
    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@40
    iput-object v5, v2, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    #@42
    .line 240
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    #@44
    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    goto :goto_0

    #@48
    .line 232
    .end local v0    # "l":Landroid/net/LinkAddress;
    .end local v2    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    .end local v3    # "source":Ljava/net/InetAddress;
    .end local v4    # "srcTarget":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;"
    :cond_1
    return-void
.end method

.method private prepareIcmpMeasurement(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "target"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 226
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@a
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V

    #@d
    .line 227
    .local v0, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    new-instance v1, Ljava/lang/Thread;

    #@f
    new-instance v2, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;

    #@11
    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    #@14
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@17
    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    #@19
    .line 228
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    #@1b
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 224
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_0
    return-void
.end method

.method private startMeasurements()V
    .locals 3

    #@0
    .prologue
    .line 259
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    #@2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "measurement$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@16
    .line 260
    .local v0, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    #@18
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    #@1b
    goto :goto_0

    #@1c
    .line 262
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    #@1e
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@21
    move-result-object v2

    #@22
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v1

    #@26
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_1

    #@2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@32
    .line 263
    .restart local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    #@34
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    #@37
    goto :goto_1

    #@38
    .line 265
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    #@3a
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@3d
    move-result-object v2

    #@3e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@41
    move-result-object v1

    #@42
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_2

    #@48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@4e
    .line 266
    .restart local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    #@50
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    #@53
    goto :goto_2

    #@54
    .line 258
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_2
    return-void
.end method

.method private totalMeasurementCount()I
    .locals 2

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    #@8
    invoke-interface {v1}, Ljava/util/Map;->size()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    #@f
    invoke-interface {v1}, Ljava/util/Map;->size()I

    #@12
    move-result v1

    #@13
    add-int/2addr v0, v1

    #@14
    return v0
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v6, "NetworkDiagnostics:"

    #@8
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDescription:Ljava/lang/String;

    #@e
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 323
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    #@1b
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    #@1e
    move-result-wide v4

    #@1f
    .line 324
    .local v4, "unfinished":J
    const-wide/16 v6, 0x0

    #@21
    cmp-long v3, v4, v6

    #@23
    if-lez v3, :cond_0

    #@25
    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v6, "WARNING: countdown wait incomplete: "

    #@2d
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    .line 328
    const-string/jumbo v6, " unfinished measurements"

    #@38
    .line 327
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 331
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@46
    .line 334
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->getMeasurements()Ljava/util/List;

    #@49
    move-result-object v3

    #@4a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v1

    #@4e
    .local v1, "m$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v3

    #@52
    if-eqz v3, :cond_2

    #@54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@5a
    .line 335
    .local v0, "m":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->checkSucceeded()Z

    #@5d
    move-result v3

    #@5e
    if-eqz v3, :cond_1

    #@60
    const-string/jumbo v2, "."

    #@63
    .line 336
    .local v2, "prefix":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    const-string/jumbo v6, "  "

    #@6f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->toString()Ljava/lang/String;

    #@76
    move-result-object v6

    #@77
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@82
    goto :goto_0

    #@83
    .line 335
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "F"

    #@86
    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_1

    #@87
    .line 339
    .end local v0    # "m":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@8a
    .line 321
    return-void
.end method

.method public getMeasurements()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 280
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->totalMeasurementCount()I

    #@5
    move-result v4

    #@6
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 283
    .local v3, "measurements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    #@b
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@e
    move-result-object v4

    #@f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/util/Map$Entry;

    #@1f
    .line 284
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    instance-of v4, v4, Ljava/net/Inet4Address;

    #@25
    if-eqz v4, :cond_0

    #@27
    .line 285
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@2d
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_0

    #@31
    .line 289
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    #@33
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@36
    move-result-object v4

    #@37
    .line 288
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v2

    #@3b
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_3

    #@41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Ljava/util/Map$Entry;

    #@47
    .line 290
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4a
    move-result-object v4

    #@4b
    check-cast v4, Landroid/util/Pair;

    #@4d
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@4f
    instance-of v4, v4, Ljava/net/Inet4Address;

    #@51
    if-eqz v4, :cond_2

    #@53
    .line 291
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@56
    move-result-object v4

    #@57
    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@59
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5c
    goto :goto_1

    #@5d
    .line 294
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    #@5f
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@62
    move-result-object v4

    #@63
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@66
    move-result-object v2

    #@67
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@6a
    move-result v4

    #@6b
    if-eqz v4, :cond_5

    #@6d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@70
    move-result-object v1

    #@71
    check-cast v1, Ljava/util/Map$Entry;

    #@73
    .line 295
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@76
    move-result-object v4

    #@77
    instance-of v4, v4, Ljava/net/Inet4Address;

    #@79
    if-eqz v4, :cond_4

    #@7b
    .line 296
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@7e
    move-result-object v4

    #@7f
    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@81
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@84
    goto :goto_2

    #@85
    .line 301
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_5
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    #@87
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@8a
    move-result-object v4

    #@8b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8e
    move-result-object v2

    #@8f
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@92
    move-result v4

    #@93
    if-eqz v4, :cond_7

    #@95
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@98
    move-result-object v1

    #@99
    check-cast v1, Ljava/util/Map$Entry;

    #@9b
    .line 302
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@9e
    move-result-object v4

    #@9f
    instance-of v4, v4, Ljava/net/Inet6Address;

    #@a1
    if-eqz v4, :cond_6

    #@a3
    .line 303
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@a6
    move-result-object v4

    #@a7
    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@a9
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ac
    goto :goto_3

    #@ad
    .line 307
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_7
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    #@af
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@b2
    move-result-object v4

    #@b3
    .line 306
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b6
    move-result-object v2

    #@b7
    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@ba
    move-result v4

    #@bb
    if-eqz v4, :cond_9

    #@bd
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c0
    move-result-object v0

    #@c1
    check-cast v0, Ljava/util/Map$Entry;

    #@c3
    .line 308
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c6
    move-result-object v4

    #@c7
    check-cast v4, Landroid/util/Pair;

    #@c9
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@cb
    instance-of v4, v4, Ljava/net/Inet6Address;

    #@cd
    if-eqz v4, :cond_8

    #@cf
    .line 309
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@d2
    move-result-object v4

    #@d3
    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@d5
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d8
    goto :goto_4

    #@d9
    .line 312
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_9
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    #@db
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@de
    move-result-object v4

    #@df
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e2
    move-result-object v2

    #@e3
    :cond_a
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e6
    move-result v4

    #@e7
    if-eqz v4, :cond_b

    #@e9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ec
    move-result-object v1

    #@ed
    check-cast v1, Ljava/util/Map$Entry;

    #@ef
    .line 313
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@f2
    move-result-object v4

    #@f3
    instance-of v4, v4, Ljava/net/Inet6Address;

    #@f5
    if-eqz v4, :cond_a

    #@f7
    .line 314
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@fa
    move-result-object v4

    #@fb
    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@fd
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@100
    goto :goto_5

    #@101
    .line 318
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_b
    return-object v3
.end method

.method public waitForMeasurements()V
    .locals 6

    #@0
    .prologue
    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    #@2
    iget-wide v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J

    #@4
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->now()J

    #@7
    move-result-wide v4

    #@8
    sub-long/2addr v2, v4

    #@9
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@b
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 270
    :goto_0
    return-void

    #@f
    .line 273
    :catch_0
    move-exception v0

    #@10
    .local v0, "ignored":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
