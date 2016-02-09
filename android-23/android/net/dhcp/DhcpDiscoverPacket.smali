.class Landroid/net/dhcp/DhcpDiscoverPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpDiscoverPacket.java"


# direct methods
.method constructor <init>(IS[BZ)V
    .locals 9
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "clientMac"    # [B
    .param p4, "broadcast"    # Z

    #@0
    .prologue
    .line 30
    sget-object v3, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@2
    sget-object v4, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@4
    sget-object v5, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@6
    sget-object v6, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@8
    move-object v0, p0

    #@9
    move v1, p1

    #@a
    move v2, p2

    #@b
    move-object v7, p3

    #@c
    move v8, p4

    #@d
    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    #@10
    .line 29
    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 9
    .param p1, "encap"    # I
    .param p2, "destUdp"    # S
    .param p3, "srcUdp"    # S

    #@0
    .prologue
    .line 43
    const/16 v0, 0x5dc

    #@2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v6

    #@6
    .line 44
    .local v6, "result":Ljava/nio/ByteBuffer;
    sget-object v2, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    #@8
    sget-object v3, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@a
    .line 45
    iget-boolean v8, p0, Landroid/net/dhcp/DhcpDiscoverPacket;->mBroadcast:Z

    #@c
    const/4 v7, 0x1

    #@d
    move-object v0, p0

    #@e
    move v1, p1

    #@f
    move v4, p2

    #@10
    move v5, p3

    #@11
    .line 44
    invoke-virtual/range {v0 .. v8}, Landroid/net/dhcp/DhcpDiscoverPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    #@14
    .line 46
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@17
    .line 47
    return-object v6
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 54
    const/16 v0, 0x35

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpDiscoverPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    #@6
    .line 55
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpDiscoverPacket;->getClientId()[B

    #@9
    move-result-object v0

    #@a
    const/16 v1, 0x3d

    #@c
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpDiscoverPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    #@f
    .line 56
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpDiscoverPacket;->addCommonClientTlvs(Ljava/nio/ByteBuffer;)V

    #@12
    .line 57
    iget-object v0, p0, Landroid/net/dhcp/DhcpDiscoverPacket;->mRequestedParams:[B

    #@14
    const/16 v1, 0x37

    #@16
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpDiscoverPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    #@19
    .line 58
    invoke-static {p1}, Landroid/net/dhcp/DhcpDiscoverPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    #@1c
    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 34
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 35
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, " DISCOVER "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    .line 36
    iget-boolean v1, p0, Landroid/net/dhcp/DhcpDiscoverPacket;->mBroadcast:Z

    #@16
    if-eqz v1, :cond_0

    #@18
    const-string/jumbo v1, "broadcast "

    #@1b
    .line 35
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    return-object v1

    #@24
    .line 36
    :cond_0
    const-string/jumbo v1, "unicast "

    #@27
    goto :goto_0
.end method
