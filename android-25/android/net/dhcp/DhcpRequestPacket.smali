.class Landroid/net/dhcp/DhcpRequestPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpRequestPacket.java"


# direct methods
.method constructor <init>(ISLjava/net/Inet4Address;[BZ)V
    .locals 9
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "clientMac"    # [B
    .param p5, "broadcast"    # Z

    #@0
    .prologue
    .line 33
    sget-object v4, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@2
    sget-object v5, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@4
    sget-object v6, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move-object v3, p3

    #@a
    move-object v7, p4

    #@b
    move v8, p5

    #@c
    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    #@f
    .line 32
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
    .line 47
    const/16 v0, 0x5dc

    #@2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v6

    #@6
    .line 49
    .local v6, "result":Ljava/nio/ByteBuffer;
    sget-object v2, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    #@8
    sget-object v3, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@a
    .line 50
    iget-boolean v8, p0, Landroid/net/dhcp/DhcpRequestPacket;->mBroadcast:Z

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
    .line 49
    invoke-virtual/range {v0 .. v8}, Landroid/net/dhcp/DhcpRequestPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    #@14
    .line 51
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@17
    .line 52
    return-object v6
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 59
    const/16 v0, 0x35

    #@2
    const/4 v1, 0x3

    #@3
    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    #@6
    .line 60
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpRequestPacket;->getClientId()[B

    #@9
    move-result-object v0

    #@a
    const/16 v1, 0x3d

    #@c
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    #@f
    .line 61
    sget-object v0, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@11
    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedIp:Ljava/net/Inet4Address;

    #@13
    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_0

    #@19
    .line 62
    iget-object v0, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedIp:Ljava/net/Inet4Address;

    #@1b
    const/16 v1, 0x32

    #@1d
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    #@20
    .line 64
    :cond_0
    sget-object v0, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@22
    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    #@24
    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_1

    #@2a
    .line 65
    iget-object v0, p0, Landroid/net/dhcp/DhcpRequestPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    #@2c
    const/16 v1, 0x36

    #@2e
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    #@31
    .line 67
    :cond_1
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpRequestPacket;->addCommonClientTlvs(Ljava/nio/ByteBuffer;)V

    #@34
    .line 68
    iget-object v0, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedParams:[B

    #@36
    const/16 v1, 0x37

    #@38
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    #@3b
    .line 69
    invoke-static {p1}, Landroid/net/dhcp/DhcpRequestPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    #@3e
    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 37
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 38
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, " REQUEST, desired IP "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedIp:Ljava/net/Inet4Address;

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, " from host \'"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 39
    iget-object v2, p0, Landroid/net/dhcp/DhcpRequestPacket;->mHostName:Ljava/lang/String;

    #@23
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 39
    const-string/jumbo v2, "\', param list length "

    #@2a
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 40
    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedParams:[B

    #@30
    if-nez v1, :cond_0

    #@32
    const/4 v1, 0x0

    #@33
    .line 38
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    return-object v1

    #@3c
    .line 40
    :cond_0
    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedParams:[B

    #@3e
    array-length v1, v1

    #@3f
    goto :goto_0
.end method
