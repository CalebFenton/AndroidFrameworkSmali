.class Landroid/net/dhcp/DhcpDeclinePacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpDeclinePacket.java"


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
    const/4 v8, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    move-object v6, p6

    #@8
    move-object/from16 v7, p7

    #@a
    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    #@d
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
    .line 44
    const/16 v0, 0x5dc

    #@2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v6

    #@6
    .line 46
    .local v6, "result":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Landroid/net/dhcp/DhcpDeclinePacket;->mClientIp:Ljava/net/Inet4Address;

    #@8
    iget-object v3, p0, Landroid/net/dhcp/DhcpDeclinePacket;->mYourIp:Ljava/net/Inet4Address;

    #@a
    .line 47
    const/4 v7, 0x1

    #@b
    const/4 v8, 0x0

    #@c
    move-object v0, p0

    #@d
    move v1, p1

    #@e
    move v4, p2

    #@f
    move v5, p3

    #@10
    .line 46
    invoke-virtual/range {v0 .. v8}, Landroid/net/dhcp/DhcpDeclinePacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    #@13
    .line 48
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@16
    .line 49
    return-object v6
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 56
    const/16 v0, 0x35

    #@2
    const/4 v1, 0x4

    #@3
    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpDeclinePacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    #@6
    .line 57
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpDeclinePacket;->getClientId()[B

    #@9
    move-result-object v0

    #@a
    const/16 v1, 0x3d

    #@c
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpDeclinePacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    #@f
    .line 59
    invoke-static {p1}, Landroid/net/dhcp/DhcpDeclinePacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    #@12
    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 36
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 37
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, " DECLINE"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1
.end method
