.class public Lcom/android/server/connectivity/NetworkDiagnostics;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;,
        Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;,
        Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;
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
    .line 83
    const-string/jumbo v0, "8.8.8.8"

    #@3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    #@9
    .line 85
    const-string/jumbo v0, "2001:4860:4860::8888"

    #@c
    .line 84
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    #@12
    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/net/Network;Landroid/net/LinkProperties;J)V
    .locals 9
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "timeoutMs"    # J

    #@0
    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 151
    new-instance v4, Ljava/util/HashMap;

    #@5
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    #@a
    .line 152
    new-instance v4, Ljava/util/HashMap;

    #@c
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    #@11
    .line 157
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    #@13
    .line 158
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@15
    .line 159
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@17
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkDiagnostics;->getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@1e
    move-result-object v4

    #@1f
    iput-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;

    #@21
    .line 160
    iput-wide p3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mTimeoutMs:J

    #@23
    .line 161
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->now()J

    #@26
    move-result-wide v4

    #@27
    iput-wide v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mStartTime:J

    #@29
    .line 162
    iget-wide v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mStartTime:J

    #@2b
    iget-wide v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mTimeoutMs:J

    #@2d
    add-long/2addr v4, v6

    #@2e
    iput-wide v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J

    #@30
    .line 169
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@32
    sget-object v5, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    #@34
    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_0

    #@3a
    .line 170
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@3c
    sget-object v5, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    #@3e
    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    #@41
    .line 175
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@43
    invoke-virtual {v4}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    #@46
    move-result v4

    #@47
    if-nez v4, :cond_1

    #@49
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@4b
    invoke-virtual {v4}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    #@4e
    move-result v4

    #@4f
    if-eqz v4, :cond_2

    #@51
    .line 176
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@53
    sget-object v5, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    #@55
    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    #@58
    .line 179
    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@5a
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    #@5d
    move-result-object v4

    #@5e
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@61
    move-result-object v3

    #@62
    .local v3, "route$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@65
    move-result v4

    #@66
    if-eqz v4, :cond_4

    #@68
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6b
    move-result-object v2

    #@6c
    check-cast v2, Landroid/net/RouteInfo;

    #@6e
    .line 180
    .local v2, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->hasGateway()Z

    #@71
    move-result v4

    #@72
    if-eqz v4, :cond_3

    #@74
    .line 181
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@77
    move-result-object v4

    #@78
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareIcmpMeasurement(Ljava/net/InetAddress;)V

    #@7b
    goto :goto_0

    #@7c
    .line 184
    .end local v2    # "route":Landroid/net/RouteInfo;
    :cond_4
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@7e
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@81
    move-result-object v4

    #@82
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@85
    move-result-object v1

    #@86
    .local v1, "nameserver$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@89
    move-result v4

    #@8a
    if-eqz v4, :cond_5

    #@8c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8f
    move-result-object v0

    #@90
    check-cast v0, Ljava/net/InetAddress;

    #@92
    .line 185
    .local v0, "nameserver":Ljava/net/InetAddress;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareIcmpMeasurement(Ljava/net/InetAddress;)V

    #@95
    .line 186
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareDnsMeasurement(Ljava/net/InetAddress;)V

    #@98
    goto :goto_1

    #@99
    .line 189
    .end local v0    # "nameserver":Ljava/net/InetAddress;
    :cond_5
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    #@9b
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->totalMeasurementCount()I

    #@9e
    move-result v5

    #@9f
    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@a2
    iput-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    #@a4
    .line 191
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->startMeasurements()V

    #@a7
    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v5, "ifaces{"

    #@af
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v4

    #@b3
    const-string/jumbo v5, ","

    #@b6
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    #@b8
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    #@bb
    move-result-object v6

    #@bc
    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@bf
    move-result-object v5

    #@c0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v4

    #@c4
    const-string/jumbo v5, "}"

    #@c7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v4

    #@cb
    .line 194
    const-string/jumbo v5, " index{"

    #@ce
    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v4

    #@d2
    .line 194
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;

    #@d4
    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v4

    #@d8
    .line 194
    const-string/jumbo v5, "}"

    #@db
    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v4

    #@df
    .line 195
    const-string/jumbo v5, " network{"

    #@e2
    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v4

    #@e6
    .line 195
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    #@e8
    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v4

    #@ec
    .line 195
    const-string/jumbo v5, "}"

    #@ef
    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v4

    #@f3
    .line 196
    const-string/jumbo v5, " nethandle{"

    #@f6
    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v4

    #@fa
    .line 196
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    #@fc
    invoke-virtual {v5}, Landroid/net/Network;->getNetworkHandle()J

    #@ff
    move-result-wide v6

    #@100
    .line 193
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@103
    move-result-object v4

    #@104
    .line 196
    const-string/jumbo v5, "}"

    #@107
    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v4

    #@10b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10e
    move-result-object v4

    #@10f
    iput-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDescription:Ljava/lang/String;

    #@111
    .line 156
    return-void
.end method

.method private static getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "ifname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 201
    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@3
    move-result-object v1

    #@4
    .line 202
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
    .line 203
    .end local v1    # "ni":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    #@e
    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    #@f
    return-object v2
.end method

.method private static final now()J
    .locals 2

    #@0
    .prologue
    .line 89
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
    .line 217
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 218
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    #@e
    .line 219
    .local v0, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    new-instance v1, Ljava/lang/Thread;

    #@10
    new-instance v2, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;

    #@12
    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    #@15
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@18
    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    #@1a
    .line 220
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    #@1c
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 216
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_0
    return-void
.end method

.method private prepareIcmpMeasurement(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "target"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 210
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    #@e
    .line 211
    .local v0, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    new-instance v1, Ljava/lang/Thread;

    #@10
    new-instance v2, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;

    #@12
    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    #@15
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@18
    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    #@1a
    .line 212
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    #@1c
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 208
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_0
    return-void
.end method

.method private startMeasurements()V
    .locals 3

    #@0
    .prologue
    .line 229
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
    .line 230
    .local v0, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    #@18
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    #@1b
    goto :goto_0

    #@1c
    .line 232
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

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
    .line 233
    .restart local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    #@34
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    #@37
    goto :goto_1

    #@38
    .line 228
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_1
    return-void
.end method

.method private totalMeasurementCount()I
    .locals 2

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    #@8
    invoke-interface {v1}, Ljava/util/Map;->size()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    return v0
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "NetworkDiagnostics:"

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDescription:Ljava/lang/String;

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 245
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    #@1b
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    #@1e
    move-result-wide v2

    #@1f
    .line 246
    .local v2, "unfinished":J
    const-wide/16 v4, 0x0

    #@21
    cmp-long v4, v2, v4

    #@23
    if-lez v4, :cond_0

    #@25
    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v5, "WARNING: countdown wait incomplete: "

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    .line 250
    const-string/jumbo v5, " unfinished measurements"

    #@38
    .line 249
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 253
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@46
    .line 254
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    #@48
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@4b
    move-result-object v4

    #@4c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4f
    move-result-object v1

    #@50
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@53
    move-result v4

    #@54
    if-eqz v4, :cond_2

    #@56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@59
    move-result-object v0

    #@5a
    check-cast v0, Ljava/util/Map$Entry;

    #@5c
    .line 255
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@5f
    move-result-object v4

    #@60
    instance-of v4, v4, Ljava/net/Inet4Address;

    #@62
    if-eqz v4, :cond_1

    #@64
    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@67
    move-result-object v4

    #@68
    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@6a
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->toString()Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@71
    goto :goto_0

    #@72
    .line 259
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    #@74
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@77
    move-result-object v4

    #@78
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7b
    move-result-object v1

    #@7c
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7f
    move-result v4

    #@80
    if-eqz v4, :cond_4

    #@82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@85
    move-result-object v0

    #@86
    check-cast v0, Ljava/util/Map$Entry;

    #@88
    .line 260
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@8b
    move-result-object v4

    #@8c
    instance-of v4, v4, Ljava/net/Inet6Address;

    #@8e
    if-eqz v4, :cond_3

    #@90
    .line 261
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@93
    move-result-object v4

    #@94
    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@96
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->toString()Ljava/lang/String;

    #@99
    move-result-object v4

    #@9a
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@9d
    goto :goto_1

    #@9e
    .line 264
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_4
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    #@a0
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@a3
    move-result-object v4

    #@a4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a7
    move-result-object v1

    #@a8
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@ab
    move-result v4

    #@ac
    if-eqz v4, :cond_6

    #@ae
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b1
    move-result-object v0

    #@b2
    check-cast v0, Ljava/util/Map$Entry;

    #@b4
    .line 265
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@b7
    move-result-object v4

    #@b8
    instance-of v4, v4, Ljava/net/Inet4Address;

    #@ba
    if-eqz v4, :cond_5

    #@bc
    .line 266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@bf
    move-result-object v4

    #@c0
    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@c2
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->toString()Ljava/lang/String;

    #@c5
    move-result-object v4

    #@c6
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@c9
    goto :goto_2

    #@ca
    .line 269
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_6
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    #@cc
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@cf
    move-result-object v4

    #@d0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d3
    move-result-object v1

    #@d4
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d7
    move-result v4

    #@d8
    if-eqz v4, :cond_8

    #@da
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@dd
    move-result-object v0

    #@de
    check-cast v0, Ljava/util/Map$Entry;

    #@e0
    .line 270
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e3
    move-result-object v4

    #@e4
    instance-of v4, v4, Ljava/net/Inet6Address;

    #@e6
    if-eqz v4, :cond_7

    #@e8
    .line 271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@eb
    move-result-object v4

    #@ec
    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@ee
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->toString()Ljava/lang/String;

    #@f1
    move-result-object v4

    #@f2
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@f5
    goto :goto_3

    #@f6
    .line 274
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@f9
    .line 243
    return-void
.end method

.method public waitForMeasurements()V
    .locals 6

    #@0
    .prologue
    .line 239
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
    .line 237
    :goto_0
    return-void

    #@f
    .line 240
    :catch_0
    move-exception v0

    #@10
    .local v0, "ignored":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
