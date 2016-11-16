.class public final Lcom/android/server/connectivity/IpConnectivityEventBuilder;
.super Ljava/lang/Object;
.source "IpConnectivityEventBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static bytesToInts([B)[I
    .locals 3
    .param p0, "in"    # [B

    #@0
    .prologue
    .line 228
    array-length v2, p0

    #@1
    new-array v1, v2, [I

    #@3
    .line 229
    .local v1, "out":[I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 230
    aget-byte v2, p0, v0

    #@9
    and-int/lit16 v2, v2, 0xff

    #@b
    aput v2, v1, v0

    #@d
    .line 229
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 232
    :cond_0
    return-object v1
.end method

.method private static ipSupportOf(Landroid/net/metrics/DefaultNetworkEvent;)I
    .locals 1
    .param p0, "in"    # Landroid/net/metrics/DefaultNetworkEvent;

    #@0
    .prologue
    .line 242
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 243
    const/4 v0, 0x3

    #@9
    return v0

    #@a
    .line 245
    :cond_0
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 246
    const/4 v0, 0x2

    #@f
    return v0

    #@10
    .line 248
    :cond_1
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 249
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 251
    :cond_2
    const/4 v0, 0x0

    #@17
    return v0
.end method

.method private static isBitSet(II)Z
    .locals 3
    .param p0, "flags"    # I
    .param p1, "bit"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 255
    shl-int v2, v0, p1

    #@4
    and-int/2addr v2, p0

    #@5
    if-eqz v2, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    move v0, v1

    #@9
    goto :goto_0
.end method

.method private static netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    .locals 1
    .param p0, "netid"    # I

    #@0
    .prologue
    .line 236
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;-><init>()V

    #@5
    .line 237
    .local v0, "ni":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    iput p0, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->networkId:I

    #@7
    .line 238
    return-object v0
.end method

.method public static serialize(ILjava/util/List;)[B
    .locals 2
    .param p0, "dropped"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 48
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/net/ConnectivityMetricsEvent;>;"
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;-><init>()V

    #@5
    .line 49
    .local v0, "log":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;
    invoke-static {p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Ljava/util/List;)[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@b
    .line 50
    iput p0, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    #@d
    .line 51
    invoke-static {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method private static setApfProgramEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfProgramEvent;)V
    .locals 5
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/ApfProgramEvent;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 192
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    #@3
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    #@6
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    #@8
    .line 193
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    #@a
    iget-wide v2, p1, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    #@c
    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    #@e
    .line 194
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    #@10
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    #@12
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    #@14
    .line 195
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    #@16
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    #@18
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    #@1a
    .line 196
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    #@1c
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    #@1e
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    #@20
    .line 197
    iget v0, p1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    #@22
    const/4 v1, 0x0

    #@23
    invoke-static {v0, v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->isBitSet(II)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 198
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    #@2b
    iput-boolean v4, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    #@2d
    .line 200
    :cond_0
    iget v0, p1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    #@2f
    invoke-static {v0, v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->isBitSet(II)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_1

    #@35
    .line 201
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    #@37
    iput-boolean v4, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    #@39
    .line 191
    :cond_1
    return-void
.end method

.method private static setApfStats(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfStats;)V
    .locals 4
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/ApfStats;

    #@0
    .prologue
    .line 206
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;-><init>()V

    #@5
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@7
    .line 207
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@9
    iget-wide v2, p1, Landroid/net/metrics/ApfStats;->durationMs:J

    #@b
    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    #@d
    .line 208
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@f
    iget v1, p1, Landroid/net/metrics/ApfStats;->receivedRas:I

    #@11
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    #@13
    .line 209
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@15
    iget v1, p1, Landroid/net/metrics/ApfStats;->matchingRas:I

    #@17
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    #@19
    .line 210
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@1b
    iget v1, p1, Landroid/net/metrics/ApfStats;->droppedRas:I

    #@1d
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    #@1f
    .line 211
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@21
    iget v1, p1, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    #@23
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    #@25
    .line 212
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@27
    iget v1, p1, Landroid/net/metrics/ApfStats;->parseErrors:I

    #@29
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    #@2b
    .line 213
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@2d
    iget v1, p1, Landroid/net/metrics/ApfStats;->programUpdates:I

    #@2f
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    #@31
    .line 214
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    #@33
    iget v1, p1, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    #@35
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    #@37
    .line 205
    return-void
.end method

.method private static setDefaultNetworkEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DefaultNetworkEvent;)V
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/DefaultNetworkEvent;

    #@0
    .prologue
    .line 169
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    #@5
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@7
    .line 170
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@9
    iget v1, p1, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    #@b
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@11
    .line 171
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@13
    iget v1, p1, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    #@15
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@18
    move-result-object v1

    #@19
    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@1b
    .line 172
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@1d
    iget-object v1, p1, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    #@1f
    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@21
    .line 173
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@23
    invoke-static {p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->ipSupportOf(Landroid/net/metrics/DefaultNetworkEvent;)I

    #@26
    move-result v1

    #@27
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    #@29
    .line 168
    return-void
.end method

.method private static setDhcpClientEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpClientEvent;)V
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/DhcpClientEvent;

    #@0
    .prologue
    .line 141
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;-><init>()V

    #@5
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@7
    .line 142
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@9
    iget-object v1, p1, Landroid/net/metrics/DhcpClientEvent;->ifName:Ljava/lang/String;

    #@b
    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    #@d
    .line 143
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@f
    iget-object v1, p1, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    #@11
    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->stateTransition:Ljava/lang/String;

    #@13
    .line 144
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@15
    iget v1, p1, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    #@17
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    #@19
    .line 140
    return-void
.end method

.method private static setDhcpErrorEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpErrorEvent;)V
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/DhcpErrorEvent;

    #@0
    .prologue
    .line 135
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;-><init>()V

    #@5
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@7
    .line 136
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@9
    iget-object v1, p1, Landroid/net/metrics/DhcpErrorEvent;->ifName:Ljava/lang/String;

    #@b
    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    #@d
    .line 137
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@f
    iget v1, p1, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    #@11
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->errorCode:I

    #@13
    .line 134
    return-void
.end method

.method private static setDnsEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DnsEvent;)V
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/DnsEvent;

    #@0
    .prologue
    .line 148
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    #@5
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@7
    .line 149
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@9
    iget v1, p1, Landroid/net/metrics/DnsEvent;->netId:I

    #@b
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@11
    .line 150
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@13
    iget-object v1, p1, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    #@15
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->bytesToInts([B)[I

    #@18
    move-result-object v1

    #@19
    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@1b
    .line 151
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@1d
    iget-object v1, p1, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    #@1f
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->bytesToInts([B)[I

    #@22
    move-result-object v1

    #@23
    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@25
    .line 152
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@27
    iget-object v1, p1, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    #@29
    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@2b
    .line 147
    return-void
.end method

.method private static setEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/os/Parcelable;)Z
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/os/Parcelable;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 76
    instance-of v0, p1, Landroid/net/metrics/DhcpErrorEvent;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 77
    check-cast p1, Landroid/net/metrics/DhcpErrorEvent;

    #@7
    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDhcpErrorEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpErrorEvent;)V

    #@a
    .line 78
    return v1

    #@b
    .line 81
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_0
    instance-of v0, p1, Landroid/net/metrics/DhcpClientEvent;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 82
    check-cast p1, Landroid/net/metrics/DhcpClientEvent;

    #@11
    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDhcpClientEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpClientEvent;)V

    #@14
    .line 83
    return v1

    #@15
    .line 86
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_1
    instance-of v0, p1, Landroid/net/metrics/DnsEvent;

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 87
    check-cast p1, Landroid/net/metrics/DnsEvent;

    #@1b
    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDnsEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DnsEvent;)V

    #@1e
    .line 88
    return v1

    #@1f
    .line 91
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_2
    instance-of v0, p1, Landroid/net/metrics/IpManagerEvent;

    #@21
    if-eqz v0, :cond_3

    #@23
    .line 92
    check-cast p1, Landroid/net/metrics/IpManagerEvent;

    #@25
    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setIpManagerEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpManagerEvent;)V

    #@28
    .line 93
    return v1

    #@29
    .line 96
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_3
    instance-of v0, p1, Landroid/net/metrics/IpReachabilityEvent;

    #@2b
    if-eqz v0, :cond_4

    #@2d
    .line 97
    check-cast p1, Landroid/net/metrics/IpReachabilityEvent;

    #@2f
    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpReachabilityEvent;)V

    #@32
    .line 98
    return v1

    #@33
    .line 101
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_4
    instance-of v0, p1, Landroid/net/metrics/DefaultNetworkEvent;

    #@35
    if-eqz v0, :cond_5

    #@37
    .line 102
    check-cast p1, Landroid/net/metrics/DefaultNetworkEvent;

    #@39
    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDefaultNetworkEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DefaultNetworkEvent;)V

    #@3c
    .line 103
    return v1

    #@3d
    .line 106
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_5
    instance-of v0, p1, Landroid/net/metrics/NetworkEvent;

    #@3f
    if-eqz v0, :cond_6

    #@41
    .line 107
    check-cast p1, Landroid/net/metrics/NetworkEvent;

    #@43
    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setNetworkEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/NetworkEvent;)V

    #@46
    .line 108
    return v1

    #@47
    .line 111
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_6
    instance-of v0, p1, Landroid/net/metrics/ValidationProbeEvent;

    #@49
    if-eqz v0, :cond_7

    #@4b
    .line 112
    check-cast p1, Landroid/net/metrics/ValidationProbeEvent;

    #@4d
    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setValidationProbeEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ValidationProbeEvent;)V

    #@50
    .line 113
    return v1

    #@51
    .line 116
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_7
    instance-of v0, p1, Landroid/net/metrics/ApfProgramEvent;

    #@53
    if-eqz v0, :cond_8

    #@55
    .line 117
    check-cast p1, Landroid/net/metrics/ApfProgramEvent;

    #@57
    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setApfProgramEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfProgramEvent;)V

    #@5a
    .line 118
    return v1

    #@5b
    .line 121
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_8
    instance-of v0, p1, Landroid/net/metrics/ApfStats;

    #@5d
    if-eqz v0, :cond_9

    #@5f
    .line 122
    check-cast p1, Landroid/net/metrics/ApfStats;

    #@61
    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setApfStats(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfStats;)V

    #@64
    .line 123
    return v1

    #@65
    .line 126
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_9
    instance-of v0, p1, Landroid/net/metrics/RaEvent;

    #@67
    if-eqz v0, :cond_a

    #@69
    .line 127
    check-cast p1, Landroid/net/metrics/RaEvent;

    #@6b
    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setRaEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/RaEvent;)V

    #@6e
    .line 128
    return v1

    #@6f
    .line 131
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_a
    const/4 v0, 0x0

    #@70
    return v0
.end method

.method private static setIpManagerEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpManagerEvent;)V
    .locals 4
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/IpManagerEvent;

    #@0
    .prologue
    .line 156
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;-><init>()V

    #@5
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    #@7
    .line 157
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    #@9
    iget-object v1, p1, Landroid/net/metrics/IpManagerEvent;->ifName:Ljava/lang/String;

    #@b
    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->ifName:Ljava/lang/String;

    #@d
    .line 158
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    #@f
    iget v1, p1, Landroid/net/metrics/IpManagerEvent;->eventType:I

    #@11
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    #@13
    .line 159
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    #@15
    iget-wide v2, p1, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    #@17
    long-to-int v1, v2

    #@18
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    #@1a
    .line 155
    return-void
.end method

.method private static setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpReachabilityEvent;)V
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/IpReachabilityEvent;

    #@0
    .prologue
    .line 163
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;-><init>()V

    #@5
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@7
    .line 164
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@9
    iget-object v1, p1, Landroid/net/metrics/IpReachabilityEvent;->ifName:Ljava/lang/String;

    #@b
    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->ifName:Ljava/lang/String;

    #@d
    .line 165
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@f
    iget v1, p1, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    #@11
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->eventType:I

    #@13
    .line 162
    return-void
.end method

.method private static setNetworkEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/NetworkEvent;)V
    .locals 4
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/NetworkEvent;

    #@0
    .prologue
    .line 177
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;-><init>()V

    #@5
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    #@7
    .line 178
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    #@9
    iget v1, p1, Landroid/net/metrics/NetworkEvent;->netId:I

    #@b
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@11
    .line 179
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    #@13
    iget v1, p1, Landroid/net/metrics/NetworkEvent;->eventType:I

    #@15
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->eventType:I

    #@17
    .line 180
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    #@19
    iget-wide v2, p1, Landroid/net/metrics/NetworkEvent;->durationMs:J

    #@1b
    long-to-int v1, v2

    #@1c
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    #@1e
    .line 176
    return-void
.end method

.method private static setRaEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/RaEvent;)V
    .locals 4
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/RaEvent;

    #@0
    .prologue
    .line 218
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;-><init>()V

    #@5
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@7
    .line 219
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@9
    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->routerLifetime:J

    #@b
    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    #@d
    .line 220
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@f
    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    #@11
    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    #@13
    .line 221
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@15
    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    #@17
    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    #@19
    .line 222
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@1b
    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    #@1d
    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    #@1f
    .line 223
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@21
    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    #@23
    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    #@25
    .line 224
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@27
    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    #@29
    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    #@2b
    .line 217
    return-void
.end method

.method private static setValidationProbeEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ValidationProbeEvent;)V
    .locals 4
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/ValidationProbeEvent;

    #@0
    .prologue
    .line 184
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;-><init>()V

    #@5
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@7
    .line 185
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@9
    iget v1, p1, Landroid/net/metrics/ValidationProbeEvent;->netId:I

    #@b
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@11
    .line 186
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@13
    iget-wide v2, p1, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    #@15
    long-to-int v1, v2

    #@16
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->latencyMs:I

    #@18
    .line 187
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@1a
    iget v1, p1, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    #@1c
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeType:I

    #@1e
    .line 188
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@20
    iget v1, p1, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    #@22
    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeResult:I

    #@24
    .line 183
    return-void
.end method

.method public static toProto(Landroid/net/ConnectivityMetricsEvent;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 4
    .param p0, "ev"    # Landroid/net/ConnectivityMetricsEvent;

    #@0
    .prologue
    .line 67
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    #@5
    .line 68
    .local v0, "out":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    iget-object v1, p0, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    #@7
    invoke-static {v0, v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/os/Parcelable;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 69
    const/4 v1, 0x0

    #@e
    return-object v1

    #@f
    .line 71
    :cond_0
    iget-wide v2, p0, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    #@11
    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    #@13
    .line 72
    return-object v0
.end method

.method public static toProto(Ljava/util/List;)[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;)[",
            "Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;"
        }
    .end annotation

    #@0
    .prologue
    .line 55
    .local p0, "eventsIn":Ljava/util/List;, "Ljava/util/List<Landroid/net/ConnectivityMetricsEvent;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@5
    move-result v4

    #@6
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 56
    .local v0, "eventsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "in$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_1

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/net/ConnectivityMetricsEvent;

    #@19
    .line 57
    .local v1, "in":Landroid/net/ConnectivityMetricsEvent;
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/ConnectivityMetricsEvent;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@1c
    move-result-object v3

    #@1d
    .line 58
    .local v3, "out":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    if-eqz v3, :cond_0

    #@1f
    .line 61
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_0

    #@23
    .line 63
    .end local v1    # "in":Landroid/net/ConnectivityMetricsEvent;
    .end local v3    # "out":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v4

    #@27
    new-array v4, v4, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@29
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    check-cast v4, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@2f
    return-object v4
.end method
