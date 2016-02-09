.class Landroid/net/dhcp/DhcpAckPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpAckPacket.java"


# instance fields
.field private final mSrcIp:Ljava/net/Inet4Address;


# direct methods
.method constructor <init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .locals 9
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "broadcast"    # Z
    .param p4, "serverAddress"    # Ljava/net/Inet4Address;
    .param p5, "clientIp"    # Ljava/net/Inet4Address;
    .param p6, "yourIp"    # Ljava/net/Inet4Address;
    .param p7, "clientMac"    # [B

    #@0
    .prologue
    .line 34
    sget-object v6, Landroid/net/dhcp/DhcpAckPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move-object v3, p5

    #@6
    move-object v4, p6

    #@7
    move-object v5, p4

    #@8
    move-object/from16 v7, p7

    #@a
    move v8, p3

    #@b
    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    #@e
    .line 35
    iput-boolean p3, p0, Landroid/net/dhcp/DhcpAckPacket;->mBroadcast:Z

    #@10
    .line 36
    iput-object p4, p0, Landroid/net/dhcp/DhcpAckPacket;->mSrcIp:Ljava/net/Inet4Address;

    #@12
    .line 33
    return-void
.end method

.method private static final getInt(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "v"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 93
    if-nez p0, :cond_0

    #@2
    .line 94
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 96
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@7
    move-result v0

    #@8
    return v0
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 9
    .param p1, "encap"    # I
    .param p2, "destUdp"    # S
    .param p3, "srcUdp"    # S

    #@0
    .prologue
    .line 57
    const/16 v0, 0x5dc

    #@2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v6

    #@6
    .line 58
    .local v6, "result":Ljava/nio/ByteBuffer;
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mBroadcast:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    sget-object v2, Landroid/net/dhcp/DhcpAckPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    #@c
    .line 59
    .local v2, "destIp":Ljava/net/Inet4Address;
    :goto_0
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mBroadcast:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    sget-object v3, Landroid/net/dhcp/DhcpAckPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@12
    .line 62
    .local v3, "srcIp":Ljava/net/Inet4Address;
    :goto_1
    iget-boolean v8, p0, Landroid/net/dhcp/DhcpAckPacket;->mBroadcast:Z

    #@14
    const/4 v7, 0x2

    #@15
    move-object v0, p0

    #@16
    move v1, p1

    #@17
    move v4, p2

    #@18
    move v5, p3

    #@19
    .line 61
    invoke-virtual/range {v0 .. v8}, Landroid/net/dhcp/DhcpAckPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    #@1c
    .line 63
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@1f
    .line 64
    return-object v6

    #@20
    .line 58
    .end local v2    # "destIp":Ljava/net/Inet4Address;
    .end local v3    # "srcIp":Ljava/net/Inet4Address;
    :cond_0
    iget-object v2, p0, Landroid/net/dhcp/DhcpAckPacket;->mYourIp:Ljava/net/Inet4Address;

    #@22
    .restart local v2    # "destIp":Ljava/net/Inet4Address;
    goto :goto_0

    #@23
    .line 59
    :cond_1
    iget-object v3, p0, Landroid/net/dhcp/DhcpAckPacket;->mSrcIp:Ljava/net/Inet4Address;

    #@25
    .restart local v3    # "srcIp":Ljava/net/Inet4Address;
    goto :goto_1
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 71
    const/16 v0, 0x35

    #@2
    const/4 v1, 0x5

    #@3
    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    #@6
    .line 72
    iget-object v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    #@8
    const/16 v1, 0x36

    #@a
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    #@d
    .line 73
    iget-object v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    #@f
    const/16 v1, 0x33

    #@11
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    #@14
    .line 76
    iget-object v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 78
    iget-object v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    #@1a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1d
    move-result v0

    #@1e
    div-int/lit8 v0, v0, 0x2

    #@20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v0

    #@24
    .line 77
    const/16 v1, 0x3a

    #@26
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    #@29
    .line 81
    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mSubnetMask:Ljava/net/Inet4Address;

    #@2b
    const/4 v1, 0x1

    #@2c
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    #@2f
    .line 82
    iget-object v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mGateway:Ljava/net/Inet4Address;

    #@31
    const/4 v1, 0x3

    #@32
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    #@35
    .line 83
    iget-object v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mDomainName:Ljava/lang/String;

    #@37
    const/16 v1, 0xf

    #@39
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    #@3c
    .line 84
    iget-object v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    #@3e
    const/16 v1, 0x1c

    #@40
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    #@43
    .line 85
    iget-object v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mDnsServers:Ljava/util/List;

    #@45
    const/4 v1, 0x6

    #@46
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    #@49
    .line 86
    invoke-static {p1}, Landroid/net/dhcp/DhcpAckPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    #@4c
    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 40
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 41
    .local v3, "s":Ljava/lang/String;
    const-string/jumbo v2, " DNS servers: "

    #@7
    .line 43
    .local v2, "dnsServers":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/dhcp/DhcpAckPacket;->mDnsServers:Ljava/util/List;

    #@9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "dnsServer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/net/Inet4Address;

    #@19
    .line 44
    .local v0, "dnsServer":Ljava/net/Inet4Address;
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v0}, Ljava/net/Inet4Address;->toString()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    const-string/jumbo v5, " "

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    goto :goto_0

    #@36
    .line 47
    .end local v0    # "dnsServer":Ljava/net/Inet4Address;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    const-string/jumbo v5, " ACK: your new IP "

    #@42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    iget-object v5, p0, Landroid/net/dhcp/DhcpAckPacket;->mYourIp:Ljava/net/Inet4Address;

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    .line 48
    const-string/jumbo v5, ", netmask "

    #@4f
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    .line 48
    iget-object v5, p0, Landroid/net/dhcp/DhcpAckPacket;->mSubnetMask:Ljava/net/Inet4Address;

    #@55
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    .line 49
    const-string/jumbo v5, ", gateway "

    #@5c
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    .line 49
    iget-object v5, p0, Landroid/net/dhcp/DhcpAckPacket;->mGateway:Ljava/net/Inet4Address;

    #@62
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    .line 50
    const-string/jumbo v5, ", lease time "

    #@6d
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    .line 50
    iget-object v5, p0, Landroid/net/dhcp/DhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    #@73
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v4

    #@7b
    return-object v4
.end method
