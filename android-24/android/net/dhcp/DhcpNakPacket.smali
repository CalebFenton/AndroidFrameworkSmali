.class Landroid/net/dhcp/DhcpNakPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpNakPacket.java"


# direct methods
.method constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .locals 9
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "yourIp"    # Ljava/net/Inet4Address;
    .param p5, "nextIp"    # Ljava/net/Inet4Address;
    .param p6, "relayIp"    # Ljava/net/Inet4Address;
    .param p7, "clientMac"    # [B

    #@0
    .prologue
    .line 32
    sget-object v3, Landroid/net/dhcp/DhcpNakPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@2
    sget-object v4, Landroid/net/dhcp/DhcpNakPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@4
    .line 33
    const/4 v8, 0x0

    #@5
    move-object v0, p0

    #@6
    move v1, p1

    #@7
    move v2, p2

    #@8
    move-object v5, p5

    #@9
    move-object v6, p6

    #@a
    move-object/from16 v7, p7

    #@c
    .line 32
    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    #@f
    .line 31
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
    .line 45
    const/16 v0, 0x5dc

    #@2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v6

    #@6
    .line 46
    .local v6, "result":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Landroid/net/dhcp/DhcpNakPacket;->mClientIp:Ljava/net/Inet4Address;

    #@8
    .line 47
    .local v2, "destIp":Ljava/net/Inet4Address;
    iget-object v3, p0, Landroid/net/dhcp/DhcpNakPacket;->mYourIp:Ljava/net/Inet4Address;

    #@a
    .line 50
    .local v3, "srcIp":Ljava/net/Inet4Address;
    iget-boolean v8, p0, Landroid/net/dhcp/DhcpNakPacket;->mBroadcast:Z

    #@c
    const/4 v7, 0x2

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
    invoke-virtual/range {v0 .. v8}, Landroid/net/dhcp/DhcpNakPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

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
    const/4 v1, 0x6

    #@3
    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpNakPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    #@6
    .line 60
    iget-object v0, p0, Landroid/net/dhcp/DhcpNakPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    #@8
    const/16 v1, 0x36

    #@a
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpNakPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    #@d
    .line 61
    iget-object v0, p0, Landroid/net/dhcp/DhcpNakPacket;->mMessage:Ljava/lang/String;

    #@f
    const/16 v1, 0x38

    #@11
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpNakPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    #@14
    .line 62
    invoke-static {p1}, Landroid/net/dhcp/DhcpNakPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    #@17
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
    const-string/jumbo v2, " NAK, reason "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    iget-object v1, p0, Landroid/net/dhcp/DhcpNakPacket;->mMessage:Ljava/lang/String;

    #@16
    if-nez v1, :cond_0

    #@18
    const-string/jumbo v1, "(none)"

    #@1b
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
    :cond_0
    iget-object v1, p0, Landroid/net/dhcp/DhcpNakPacket;->mMessage:Ljava/lang/String;

    #@26
    goto :goto_0
.end method
