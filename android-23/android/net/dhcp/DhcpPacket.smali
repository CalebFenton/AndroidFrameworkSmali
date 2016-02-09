.class abstract Landroid/net/dhcp/DhcpPacket;
.super Ljava/lang/Object;
.source "DhcpPacket.java"


# static fields
.field protected static final CLIENT_ID_ETHER:B = 0x1t

.field protected static final DHCP_BOOTREPLY:B = 0x2t

.field protected static final DHCP_BOOTREQUEST:B = 0x1t

.field protected static final DHCP_BROADCAST_ADDRESS:B = 0x1ct

.field static final DHCP_CLIENT:S = 0x44s

.field protected static final DHCP_CLIENT_IDENTIFIER:B = 0x3dt

.field protected static final DHCP_DNS_SERVER:B = 0x6t

.field protected static final DHCP_DOMAIN_NAME:B = 0xft

.field protected static final DHCP_HOST_NAME:B = 0xct

.field protected static final DHCP_LEASE_TIME:B = 0x33t

.field protected static final DHCP_MAX_MESSAGE_SIZE:B = 0x39t

.field protected static final DHCP_MESSAGE:B = 0x38t

.field protected static final DHCP_MESSAGE_TYPE:B = 0x35t

.field protected static final DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field protected static final DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field protected static final DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field protected static final DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field protected static final DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field protected static final DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field protected static final DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field protected static final DHCP_MTU:B = 0x1at

.field protected static final DHCP_OPTION_END:B = -0x1t

.field protected static final DHCP_OPTION_PAD:B = 0x0t

.field protected static final DHCP_PARAMETER_LIST:B = 0x37t

.field protected static final DHCP_REBINDING_TIME:B = 0x3bt

.field protected static final DHCP_RENEWAL_TIME:B = 0x3at

.field protected static final DHCP_REQUESTED_IP:B = 0x32t

.field protected static final DHCP_ROUTER:B = 0x3t

.field static final DHCP_SERVER:S = 0x43s

.field protected static final DHCP_SERVER_IDENTIFIER:B = 0x36t

.field protected static final DHCP_SUBNET_MASK:B = 0x1t

.field protected static final DHCP_VENDOR_CLASS_ID:B = 0x3ct

.field protected static final DHCP_VENDOR_INFO:B = 0x2bt

.field public static final ENCAP_BOOTP:I = 0x2

.field public static final ENCAP_L2:I = 0x0

.field public static final ENCAP_L3:I = 0x1

.field public static final ETHER_BROADCAST:[B

.field public static final INADDR_ANY:Ljava/net/Inet4Address;

.field public static final INADDR_BROADCAST:Ljava/net/Inet4Address;

.field public static final INFINITE_LEASE:I = -0x1

.field private static final IP_FLAGS_OFFSET:S = 0x4000s

.field private static final IP_TOS_LOWDELAY:B = 0x10t

.field private static final IP_TTL:B = 0x40t

.field private static final IP_TYPE_UDP:B = 0x11t

.field private static final IP_VERSION_HEADER_LEN:B = 0x45t

.field protected static final MAX_LENGTH:I = 0x5dc

.field public static final MAX_OPTION_LEN:I = 0xff

.field public static final MINIMUM_LEASE:I = 0x3c

.field public static final MIN_PACKET_LENGTH_BOOTP:I = 0xec

.field public static final MIN_PACKET_LENGTH_L2:I = 0x116

.field public static final MIN_PACKET_LENGTH_L3:I = 0x108

.field protected static final TAG:Ljava/lang/String; = "DhcpPacket"


# instance fields
.field protected mBroadcast:Z

.field protected mBroadcastAddress:Ljava/net/Inet4Address;

.field protected final mClientIp:Ljava/net/Inet4Address;

.field protected final mClientMac:[B

.field protected mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mDomainName:Ljava/lang/String;

.field protected mGateway:Ljava/net/Inet4Address;

.field protected mHostName:Ljava/lang/String;

.field protected mLeaseTime:Ljava/lang/Integer;

.field protected mMaxMessageSize:Ljava/lang/Short;

.field protected mMessage:Ljava/lang/String;

.field protected mMtu:Ljava/lang/Short;

.field private final mNextIp:Ljava/net/Inet4Address;

.field private final mRelayIp:Ljava/net/Inet4Address;

.field protected mRequestedIp:Ljava/net/Inet4Address;

.field protected mRequestedParams:[B

.field protected final mSecs:S

.field protected mServerIdentifier:Ljava/net/Inet4Address;

.field protected mSubnetMask:Ljava/net/Inet4Address;

.field protected mT1:Ljava/lang/Integer;

.field protected mT2:Ljava/lang/Integer;

.field protected final mTransId:I

.field protected mVendorId:Ljava/lang/String;

.field protected mVendorInfo:Ljava/lang/String;

.field protected final mYourIp:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 37
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    #@2
    check-cast v0, Ljava/net/Inet4Address;

    #@4
    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@6
    .line 38
    sget-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    #@8
    check-cast v0, Ljava/net/Inet4Address;

    #@a
    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    #@c
    .line 39
    const/4 v0, 0x6

    #@d
    new-array v0, v0, [B

    #@f
    fill-array-data v0, :array_0

    #@12
    sput-object v0, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    #@14
    .line 28
    return-void

    #@15
    .line 39
    nop

    #@16
    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method protected constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V
    .locals 0
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "yourIp"    # Ljava/net/Inet4Address;
    .param p5, "nextIp"    # Ljava/net/Inet4Address;
    .param p6, "relayIp"    # Ljava/net/Inet4Address;
    .param p7, "clientMac"    # [B
    .param p8, "broadcast"    # Z

    #@0
    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 291
    iput p1, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    #@5
    .line 292
    iput-short p2, p0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    #@7
    .line 293
    iput-object p3, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    #@9
    .line 294
    iput-object p4, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    #@b
    .line 295
    iput-object p5, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    #@d
    .line 296
    iput-object p6, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    #@f
    .line 297
    iput-object p7, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@11
    .line 298
    iput-boolean p8, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    #@13
    .line 290
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BB)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # B

    #@0
    .prologue
    .line 501
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@3
    .line 502
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@7
    .line 503
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@a
    .line 500
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 565
    if-eqz p2, :cond_0

    #@2
    .line 566
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@5
    .line 567
    const/4 v0, 0x4

    #@6
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@9
    .line 568
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@c
    move-result v0

    #@d
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@10
    .line 564
    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # Ljava/lang/Short;

    #@0
    .prologue
    .line 554
    if-eqz p2, :cond_0

    #@2
    .line 555
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@5
    .line 556
    const/4 v0, 0x2

    #@6
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@9
    .line 557
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    #@c
    move-result v0

    #@d
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@10
    .line 553
    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 577
    :try_start_0
    const-string/jumbo v1, "US-ASCII"

    #@3
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@6
    move-result-object v1

    #@7
    invoke-static {p0, p1, v1}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 575
    return-void

    #@b
    .line 578
    :catch_0
    move-exception v0

    #@c
    .line 579
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "String is not US-ASCII: "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "addr"    # Ljava/net/Inet4Address;

    #@0
    .prologue
    .line 525
    if-eqz p2, :cond_0

    #@2
    .line 526
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, p1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    #@9
    .line 524
    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "B",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    const/16 v6, 0xff

    #@2
    .line 534
    if-eqz p2, :cond_0

    #@4
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_1

    #@a
    :cond_0
    return-void

    #@b
    .line 536
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@e
    move-result v3

    #@f
    mul-int/lit8 v2, v3, 0x4

    #@11
    .line 537
    .local v2, "optionLen":I
    if-le v2, v6, :cond_2

    #@13
    .line 538
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "DHCP option too long: "

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    .line 539
    const-string/jumbo v5, " vs. "

    #@28
    .line 538
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v3

    #@38
    .line 542
    :cond_2
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@3b
    .line 543
    int-to-byte v3, v2

    #@3c
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@3f
    .line 545
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v1

    #@43
    .local v1, "addr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_3

    #@49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Ljava/net/Inet4Address;

    #@4f
    .line 546
    .local v0, "addr":Ljava/net/Inet4Address;
    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    #@52
    move-result-object v3

    #@53
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@56
    goto :goto_0

    #@57
    .line 533
    .end local v0    # "addr":Ljava/net/Inet4Address;
    :cond_3
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;B[B)V
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "payload"    # [B

    #@0
    .prologue
    const/16 v3, 0xff

    #@2
    .line 510
    if-eqz p2, :cond_1

    #@4
    .line 511
    array-length v0, p2

    #@5
    if-le v0, v3, :cond_0

    #@7
    .line 512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "DHCP option too long: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 513
    array-length v2, p2

    #@16
    .line 512
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 513
    const-string/jumbo v2, " vs. "

    #@1d
    .line 512
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 515
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@30
    .line 516
    array-length v0, p2

    #@31
    int-to-byte v0, v0

    #@32
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@35
    .line 517
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@38
    .line 509
    :cond_1
    return-void
.end method

.method protected static addTlvEnd(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 587
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@4
    .line 586
    return-void
.end method

.method public static buildAckPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 9
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "broadcast"    # Z
    .param p3, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p5, "mac"    # [B
    .param p6, "timeout"    # Ljava/lang/Integer;
    .param p7, "netMask"    # Ljava/net/Inet4Address;
    .param p8, "bcAddr"    # Ljava/net/Inet4Address;
    .param p9, "gateway"    # Ljava/net/Inet4Address;
    .param p11, "dhcpServerIdentifier"    # Ljava/net/Inet4Address;
    .param p12, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    #@0
    .prologue
    .line 1100
    .local p10, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v1, Landroid/net/dhcp/DhcpAckPacket;

    #@2
    .line 1101
    sget-object v6, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@4
    const/4 v3, 0x0

    #@5
    move v2, p1

    #@6
    move v4, p2

    #@7
    move-object v5, p3

    #@8
    move-object v7, p4

    #@9
    move-object v8, p5

    #@a
    .line 1100
    invoke-direct/range {v1 .. v8}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    #@d
    .line 1102
    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v0, p9

    #@f
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/Inet4Address;

    #@11
    .line 1103
    move-object/from16 v0, p10

    #@13
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    #@15
    .line 1104
    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    #@17
    .line 1105
    move-object/from16 v0, p12

    #@19
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    #@1b
    .line 1106
    move-object/from16 v0, p7

    #@1d
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    #@1f
    .line 1107
    move-object/from16 v0, p11

    #@21
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    #@23
    .line 1108
    move-object/from16 v0, p8

    #@25
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    #@27
    .line 1109
    const/16 v2, 0x44

    #@29
    const/16 v3, 0x43

    #@2b
    invoke-virtual {v1, p0, v2, v3}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    #@2e
    move-result-object v2

    #@2f
    return-object v2
.end method

.method public static buildDiscoverPacket(IIS[BZ[B)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "secs"    # S
    .param p3, "clientMac"    # [B
    .param p4, "broadcast"    # Z
    .param p5, "expectedParams"    # [B

    #@0
    .prologue
    .line 1065
    new-instance v0, Landroid/net/dhcp/DhcpDiscoverPacket;

    #@2
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZ)V

    #@5
    .line 1067
    .local v0, "pkt":Landroid/net/dhcp/DhcpPacket;
    iput-object p5, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    #@7
    .line 1068
    const/16 v1, 0x43

    #@9
    const/16 v2, 0x44

    #@b
    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public static buildNakPacket(IILjava/net/Inet4Address;Ljava/net/Inet4Address;[B)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p3, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "mac"    # [B

    #@0
    .prologue
    .line 1117
    new-instance v0, Landroid/net/dhcp/DhcpNakPacket;

    #@2
    const/4 v2, 0x0

    #@3
    move v1, p1

    #@4
    move-object v3, p3

    #@5
    move-object v4, p2

    #@6
    move-object v5, p2

    #@7
    move-object v6, p2

    #@8
    move-object v7, p4

    #@9
    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    #@c
    .line 1119
    .local v0, "pkt":Landroid/net/dhcp/DhcpPacket;
    const-string/jumbo v1, "requested address not available"

    #@f
    iput-object v1, v0, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    #@11
    .line 1120
    iput-object p3, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    #@13
    .line 1121
    const/16 v1, 0x44

    #@15
    const/16 v2, 0x43

    #@17
    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method public static buildOfferPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 9
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "broadcast"    # Z
    .param p3, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p5, "mac"    # [B
    .param p6, "timeout"    # Ljava/lang/Integer;
    .param p7, "netMask"    # Ljava/net/Inet4Address;
    .param p8, "bcAddr"    # Ljava/net/Inet4Address;
    .param p9, "gateway"    # Ljava/net/Inet4Address;
    .param p11, "dhcpServerIdentifier"    # Ljava/net/Inet4Address;
    .param p12, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    #@0
    .prologue
    .line 1080
    .local p10, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v1, Landroid/net/dhcp/DhcpOfferPacket;

    #@2
    .line 1081
    sget-object v6, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@4
    const/4 v3, 0x0

    #@5
    move v2, p1

    #@6
    move v4, p2

    #@7
    move-object v5, p3

    #@8
    move-object v7, p4

    #@9
    move-object v8, p5

    #@a
    .line 1080
    invoke-direct/range {v1 .. v8}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    #@d
    .line 1082
    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v0, p9

    #@f
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/Inet4Address;

    #@11
    .line 1083
    move-object/from16 v0, p10

    #@13
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    #@15
    .line 1084
    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    #@17
    .line 1085
    move-object/from16 v0, p12

    #@19
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    #@1b
    .line 1086
    move-object/from16 v0, p11

    #@1d
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    #@1f
    .line 1087
    move-object/from16 v0, p7

    #@21
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    #@23
    .line 1088
    move-object/from16 v0, p8

    #@25
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    #@27
    .line 1089
    const/16 v2, 0x44

    #@29
    const/16 v3, 0x43

    #@2b
    invoke-virtual {v1, p0, v2, v3}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    #@2e
    move-result-object v2

    #@2f
    return-object v2
.end method

.method public static buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "broadcast"    # Z
    .param p5, "clientMac"    # [B
    .param p6, "requestedIpAddress"    # Ljava/net/Inet4Address;
    .param p7, "serverIdentifier"    # Ljava/net/Inet4Address;
    .param p8, "requestedParams"    # [B
    .param p9, "hostName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1131
    new-instance v1, Landroid/net/dhcp/DhcpRequestPacket;

    #@2
    move v2, p1

    #@3
    move v3, p2

    #@4
    move-object v4, p3

    #@5
    move-object v5, p5

    #@6
    move v6, p4

    #@7
    invoke-direct/range {v1 .. v6}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    #@a
    .line 1133
    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    #@c
    .line 1134
    iput-object p7, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    #@e
    .line 1135
    move-object/from16 v0, p9

    #@10
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    #@12
    .line 1136
    move-object/from16 v0, p8

    #@14
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    #@16
    .line 1137
    const/16 v2, 0x43

    #@18
    const/16 v3, 0x44

    #@1a
    invoke-virtual {v1, p0, v2, v3}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    #@1d
    move-result-object v7

    #@1e
    .line 1138
    .local v7, "result":Ljava/nio/ByteBuffer;
    return-object v7
.end method

.method private checksum(Ljava/nio/ByteBuffer;III)I
    .locals 11
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "seed"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const v10, 0xffff

    #@4
    .line 459
    move v6, p2

    #@5
    .line 460
    .local v6, "sum":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@8
    move-result v1

    #@9
    .line 464
    .local v1, "bufPosition":I
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@c
    .line 465
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    #@f
    move-result-object v5

    #@10
    .line 468
    .local v5, "shortBuf":Ljava/nio/ShortBuffer;
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@13
    .line 470
    sub-int v8, p4, p3

    #@15
    div-int/lit8 v8, v8, 0x2

    #@17
    new-array v4, v8, [S

    #@19
    .line 471
    .local v4, "shortArray":[S
    invoke-virtual {v5, v4}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    #@1c
    .line 473
    array-length v8, v4

    #@1d
    :goto_0
    if-ge v7, v8, :cond_0

    #@1f
    aget-short v3, v4, v7

    #@21
    .line 474
    .local v3, "s":S
    invoke-static {v3}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    #@24
    move-result v9

    #@25
    add-int/2addr v6, v9

    #@26
    .line 473
    add-int/lit8 v7, v7, 0x1

    #@28
    goto :goto_0

    #@29
    .line 477
    .end local v3    # "s":S
    :cond_0
    array-length v7, v4

    #@2a
    mul-int/lit8 v7, v7, 0x2

    #@2c
    add-int/2addr p3, v7

    #@2d
    .line 480
    if-eq p4, p3, :cond_2

    #@2f
    .line 481
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get(I)B

    #@32
    move-result v7

    #@33
    int-to-short v0, v7

    #@34
    .line 484
    .local v0, "b":S
    if-gez v0, :cond_1

    #@36
    .line 485
    add-int/lit16 v7, v0, 0x100

    #@38
    int-to-short v0, v7

    #@39
    .line 488
    :cond_1
    mul-int/lit16 v7, v0, 0x100

    #@3b
    add-int/2addr v6, v7

    #@3c
    .line 491
    .end local v0    # "b":S
    :cond_2
    shr-int/lit8 v7, v6, 0x10

    #@3e
    and-int/2addr v7, v10

    #@3f
    and-int v8, v6, v10

    #@41
    add-int v6, v7, v8

    #@43
    .line 492
    shr-int/lit8 v7, v6, 0x10

    #@45
    and-int/2addr v7, v10

    #@46
    add-int/2addr v7, v6

    #@47
    and-int v6, v7, v10

    #@49
    .line 493
    not-int v2, v6

    #@4a
    .line 494
    .local v2, "negated":I
    int-to-short v7, v2

    #@4b
    invoke-static {v7}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    #@4e
    move-result v7

    #@4f
    return v7
.end method

.method public static decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;
    .locals 71
    .param p0, "packet"    # Ljava/nio/ByteBuffer;
    .param p1, "pktType"    # I

    #@0
    .prologue
    .line 689
    new-instance v25, Ljava/util/ArrayList;

    #@2
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 690
    .local v25, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    const/16 v31, 0x0

    #@7
    .line 691
    .local v31, "gateway":Ljava/net/Inet4Address;
    const/16 v62, 0x0

    #@9
    .line 692
    .local v62, "serverIdentifier":Ljava/net/Inet4Address;
    const/16 v56, 0x0

    #@b
    .line 693
    .local v56, "netMask":Ljava/net/Inet4Address;
    const/16 v54, 0x0

    #@d
    .line 694
    .local v54, "message":Ljava/lang/String;
    const/16 v69, 0x0

    #@f
    .line 695
    .local v69, "vendorId":Ljava/lang/String;
    const/16 v70, 0x0

    #@11
    .line 696
    .local v70, "vendorInfo":Ljava/lang/String;
    const/16 v30, 0x0

    #@13
    .line 697
    .local v30, "expectedParams":[B
    const/16 v33, 0x0

    #@15
    .line 698
    .local v33, "hostName":Ljava/lang/String;
    const/16 v26, 0x0

    #@17
    .line 699
    .local v26, "domainName":Ljava/lang/String;
    const/4 v6, 0x0

    #@18
    .line 700
    .local v6, "ipSrc":Ljava/net/Inet4Address;
    const/16 v39, 0x0

    #@1a
    .line 701
    .local v39, "ipDst":Ljava/net/Inet4Address;
    const/16 v21, 0x0

    #@1c
    .line 702
    .local v21, "bcAddr":Ljava/net/Inet4Address;
    const/16 v61, 0x0

    #@1e
    .line 708
    .local v61, "requestedIp":Ljava/net/Inet4Address;
    const/16 v55, 0x0

    #@20
    .line 709
    .local v55, "mtu":Ljava/lang/Short;
    const/16 v53, 0x0

    #@22
    .line 710
    .local v53, "maxMessageSize":Ljava/lang/Short;
    const/16 v52, 0x0

    #@24
    .line 711
    .local v52, "leaseTime":Ljava/lang/Integer;
    const/16 v18, 0x0

    #@26
    .line 712
    .local v18, "T1":Ljava/lang/Integer;
    const/16 v19, 0x0

    #@28
    .line 715
    .local v19, "T2":Ljava/lang/Integer;
    const/16 v24, -0x1

    #@2a
    .line 717
    .local v24, "dhcpType":B
    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@2c
    move-object/from16 v0, p0

    #@2e
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@31
    .line 720
    if-nez p1, :cond_1

    #@33
    .line 721
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@36
    move-result v10

    #@37
    const/16 v11, 0x116

    #@39
    if-ge v10, v11, :cond_0

    #@3b
    .line 722
    const/4 v10, 0x0

    #@3c
    return-object v10

    #@3d
    .line 725
    :cond_0
    const/4 v10, 0x6

    #@3e
    new-array v0, v10, [B

    #@40
    move-object/from16 v49, v0

    #@42
    .line 726
    .local v49, "l2dst":[B
    const/4 v10, 0x6

    #@43
    new-array v0, v10, [B

    #@45
    move-object/from16 v50, v0

    #@47
    .line 728
    .local v50, "l2src":[B
    move-object/from16 v0, p0

    #@49
    move-object/from16 v1, v49

    #@4b
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@4e
    .line 729
    move-object/from16 v0, p0

    #@50
    move-object/from16 v1, v50

    #@52
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@55
    .line 731
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@58
    move-result v51

    #@59
    .line 733
    .local v51, "l2type":S
    sget v10, Landroid/system/OsConstants;->ETH_P_IP:I

    #@5b
    move/from16 v0, v51

    #@5d
    if-eq v0, v10, :cond_1

    #@5f
    .line 734
    const/4 v10, 0x0

    #@60
    return-object v10

    #@61
    .line 737
    .end local v49    # "l2dst":[B
    .end local v50    # "l2src":[B
    .end local v51    # "l2type":S
    :cond_1
    const/4 v10, 0x1

    #@62
    move/from16 v0, p1

    #@64
    if-gt v0, v10, :cond_6

    #@66
    .line 738
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@69
    move-result v10

    #@6a
    const/16 v11, 0x108

    #@6c
    if-ge v10, v11, :cond_2

    #@6e
    .line 739
    const/4 v10, 0x0

    #@6f
    return-object v10

    #@70
    .line 742
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@73
    move-result v46

    #@74
    .line 743
    .local v46, "ipTypeAndLength":B
    move/from16 v0, v46

    #@76
    and-int/lit16 v10, v0, 0xf0

    #@78
    shr-int/lit8 v47, v10, 0x4

    #@7a
    .line 744
    .local v47, "ipVersion":I
    const/4 v10, 0x4

    #@7b
    move/from16 v0, v47

    #@7d
    if-eq v0, v10, :cond_3

    #@7f
    .line 745
    const/4 v10, 0x0

    #@80
    return-object v10

    #@81
    .line 749
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@84
    move-result v38

    #@85
    .line 750
    .local v38, "ipDiffServicesField":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@88
    move-result v45

    #@89
    .line 751
    .local v45, "ipTotalLength":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@8c
    move-result v42

    #@8d
    .line 752
    .local v42, "ipIdentification":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@90
    move-result v40

    #@91
    .line 753
    .local v40, "ipFlags":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@94
    move-result v41

    #@95
    .line 754
    .local v41, "ipFragOffset":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@98
    move-result v44

    #@99
    .line 755
    .local v44, "ipTTL":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@9c
    move-result v43

    #@9d
    .line 756
    .local v43, "ipProto":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@a0
    move-result v37

    #@a1
    .line 758
    .local v37, "ipChksm":S
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    #@a4
    move-result-object v6

    #@a5
    .line 759
    .local v6, "ipSrc":Ljava/net/Inet4Address;
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    #@a8
    move-result-object v39

    #@a9
    .line 761
    .local v39, "ipDst":Ljava/net/Inet4Address;
    const/16 v10, 0x11

    #@ab
    move/from16 v0, v43

    #@ad
    if-eq v0, v10, :cond_4

    #@af
    .line 762
    const/4 v10, 0x0

    #@b0
    return-object v10

    #@b1
    .line 767
    :cond_4
    and-int/lit8 v10, v46, 0xf

    #@b3
    add-int/lit8 v60, v10, -0x5

    #@b5
    .line 768
    .local v60, "optionWords":I
    const/16 v35, 0x0

    #@b7
    .local v35, "i":I
    :goto_0
    move/from16 v0, v35

    #@b9
    move/from16 v1, v60

    #@bb
    if-ge v0, v1, :cond_5

    #@bd
    .line 769
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@c0
    .line 768
    add-int/lit8 v35, v35, 0x1

    #@c2
    goto :goto_0

    #@c3
    .line 773
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@c6
    move-result v68

    #@c7
    .line 774
    .local v68, "udpSrcPort":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@ca
    move-result v66

    #@cb
    .line 775
    .local v66, "udpDstPort":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@ce
    move-result v67

    #@cf
    .line 776
    .local v67, "udpLen":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@d2
    move-result v65

    #@d3
    .line 778
    .local v65, "udpChkSum":S
    const/16 v10, 0x43

    #@d5
    move/from16 v0, v68

    #@d7
    if-eq v0, v10, :cond_6

    #@d9
    const/16 v10, 0x44

    #@db
    move/from16 v0, v68

    #@dd
    if-eq v0, v10, :cond_6

    #@df
    .line 779
    const/4 v10, 0x0

    #@e0
    return-object v10

    #@e1
    .line 783
    .end local v6    # "ipSrc":Ljava/net/Inet4Address;
    .end local v35    # "i":I
    .end local v37    # "ipChksm":S
    .end local v38    # "ipDiffServicesField":B
    .end local v39    # "ipDst":Ljava/net/Inet4Address;
    .end local v40    # "ipFlags":B
    .end local v41    # "ipFragOffset":B
    .end local v42    # "ipIdentification":S
    .end local v43    # "ipProto":B
    .end local v44    # "ipTTL":B
    .end local v45    # "ipTotalLength":S
    .end local v46    # "ipTypeAndLength":B
    .end local v47    # "ipVersion":I
    .end local v60    # "optionWords":I
    .end local v65    # "udpChkSum":S
    .end local v66    # "udpDstPort":S
    .end local v67    # "udpLen":S
    .end local v68    # "udpSrcPort":S
    :cond_6
    const/4 v10, 0x2

    #@e2
    move/from16 v0, p1

    #@e4
    if-gt v0, v10, :cond_7

    #@e6
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@e9
    move-result v10

    #@ea
    const/16 v11, 0xec

    #@ec
    if-ge v10, v11, :cond_8

    #@ee
    .line 784
    :cond_7
    const/4 v10, 0x0

    #@ef
    return-object v10

    #@f0
    .line 787
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@f3
    move-result v64

    #@f4
    .line 788
    .local v64, "type":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@f7
    move-result v34

    #@f8
    .line 789
    .local v34, "hwType":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@fb
    move-result v20

    #@fc
    .line 790
    .local v20, "addrLen":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@ff
    move-result v32

    #@100
    .line 791
    .local v32, "hops":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@103
    move-result v3

    #@104
    .line 792
    .local v3, "transactionId":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@107
    move-result v4

    #@108
    .line 793
    .local v4, "secs":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@10b
    move-result v22

    #@10c
    .line 794
    .local v22, "bootpFlags":S
    const v10, 0x8000

    #@10f
    and-int v10, v10, v22

    #@111
    if-eqz v10, :cond_9

    #@113
    const/4 v5, 0x1

    #@114
    .line 795
    .local v5, "broadcast":Z
    :goto_1
    const/4 v10, 0x4

    #@115
    new-array v0, v10, [B

    #@117
    move-object/from16 v48, v0

    #@119
    .line 798
    .local v48, "ipv4addr":[B
    :try_start_0
    move-object/from16 v0, p0

    #@11b
    move-object/from16 v1, v48

    #@11d
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@120
    .line 799
    invoke-static/range {v48 .. v48}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    #@123
    move-result-object v7

    #@124
    check-cast v7, Ljava/net/Inet4Address;

    #@126
    .line 800
    .local v7, "clientIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    #@128
    move-object/from16 v1, v48

    #@12a
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@12d
    .line 801
    invoke-static/range {v48 .. v48}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    #@130
    move-result-object v8

    #@131
    check-cast v8, Ljava/net/Inet4Address;

    #@133
    .line 802
    .local v8, "yourIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    #@135
    move-object/from16 v1, v48

    #@137
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@13a
    .line 803
    invoke-static/range {v48 .. v48}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    #@13d
    move-result-object v15

    #@13e
    check-cast v15, Ljava/net/Inet4Address;

    #@140
    .line 804
    .local v15, "nextIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    #@142
    move-object/from16 v1, v48

    #@144
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@147
    .line 805
    invoke-static/range {v48 .. v48}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    #@14a
    move-result-object v16

    #@14b
    check-cast v16, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@14d
    .line 810
    .local v16, "relayIp":Ljava/net/Inet4Address;
    move/from16 v0, v20

    #@14f
    new-array v9, v0, [B

    #@151
    .line 811
    .local v9, "clientMac":[B
    move-object/from16 v0, p0

    #@153
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@156
    .line 814
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    #@159
    move-result v10

    #@15a
    rsub-int/lit8 v11, v20, 0x10

    #@15c
    add-int/2addr v10, v11

    #@15d
    add-int/lit8 v10, v10, 0x40

    #@15f
    add-int/lit16 v10, v10, 0x80

    #@161
    move-object/from16 v0, p0

    #@163
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@166
    .line 818
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@169
    move-result v23

    #@16a
    .line 820
    .local v23, "dhcpMagicCookie":I
    const v10, 0x63825363

    #@16d
    move/from16 v0, v23

    #@16f
    if-eq v0, v10, :cond_a

    #@171
    .line 821
    const/4 v10, 0x0

    #@172
    return-object v10

    #@173
    .line 794
    .end local v5    # "broadcast":Z
    .end local v7    # "clientIp":Ljava/net/Inet4Address;
    .end local v8    # "yourIp":Ljava/net/Inet4Address;
    .end local v9    # "clientMac":[B
    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .end local v16    # "relayIp":Ljava/net/Inet4Address;
    .end local v23    # "dhcpMagicCookie":I
    .end local v48    # "ipv4addr":[B
    :cond_9
    const/4 v5, 0x0

    #@174
    .restart local v5    # "broadcast":Z
    goto :goto_1

    #@175
    .line 806
    .restart local v48    # "ipv4addr":[B
    :catch_0
    move-exception v28

    #@176
    .line 807
    .local v28, "ex":Ljava/net/UnknownHostException;
    const/4 v10, 0x0

    #@177
    return-object v10

    #@178
    .line 824
    .end local v28    # "ex":Ljava/net/UnknownHostException;
    .restart local v7    # "clientIp":Ljava/net/Inet4Address;
    .restart local v8    # "yourIp":Ljava/net/Inet4Address;
    .restart local v9    # "clientMac":[B
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    .restart local v16    # "relayIp":Ljava/net/Inet4Address;
    .restart local v23    # "dhcpMagicCookie":I
    :cond_a
    const/16 v57, 0x1

    #@17a
    .line 826
    .end local v18    # "T1":Ljava/lang/Integer;
    .end local v19    # "T2":Ljava/lang/Integer;
    .end local v21    # "bcAddr":Ljava/net/Inet4Address;
    .end local v24    # "dhcpType":B
    .end local v26    # "domainName":Ljava/lang/String;
    .end local v30    # "expectedParams":[B
    .end local v31    # "gateway":Ljava/net/Inet4Address;
    .end local v33    # "hostName":Ljava/lang/String;
    .end local v52    # "leaseTime":Ljava/lang/Integer;
    .end local v53    # "maxMessageSize":Ljava/lang/Short;
    .end local v54    # "message":Ljava/lang/String;
    .end local v55    # "mtu":Ljava/lang/Short;
    .end local v56    # "netMask":Ljava/net/Inet4Address;
    .end local v61    # "requestedIp":Ljava/net/Inet4Address;
    .end local v62    # "serverIdentifier":Ljava/net/Inet4Address;
    .end local v69    # "vendorId":Ljava/lang/String;
    .end local v70    # "vendorInfo":Ljava/lang/String;
    .local v57, "notFinishedOptions":Z
    :cond_b
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    #@17d
    move-result v10

    #@17e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    #@181
    move-result v11

    #@182
    if-ge v10, v11, :cond_e

    #@184
    if-eqz v57, :cond_e

    #@186
    .line 828
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@189
    move-result v59

    #@18a
    .line 830
    .local v59, "optionType":B
    const/4 v10, -0x1

    #@18b
    move/from16 v0, v59

    #@18d
    if-ne v0, v10, :cond_c

    #@18f
    .line 831
    const/16 v57, 0x0

    #@191
    goto :goto_2

    #@192
    .line 832
    :cond_c
    if-eqz v59, :cond_b

    #@194
    .line 835
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@197
    move-result v10

    #@198
    and-int/lit16 v0, v10, 0xff

    #@19a
    move/from16 v58, v0

    #@19c
    .line 836
    .local v58, "optionLen":I
    const/16 v29, 0x0

    #@19e
    .line 838
    .local v29, "expectedLen":I
    sparse-switch v59, :sswitch_data_0

    #@1a1
    .line 922
    const/16 v35, 0x0

    #@1a3
    .restart local v35    # "i":I
    :goto_3
    move/from16 v0, v35

    #@1a5
    move/from16 v1, v58

    #@1a7
    if-ge v0, v1, :cond_d

    #@1a9
    .line 923
    add-int/lit8 v29, v29, 0x1

    #@1ab
    .line 924
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@1ae
    move-result v63

    #@1af
    .line 922
    .local v63, "throwaway":B
    add-int/lit8 v35, v35, 0x1

    #@1b1
    goto :goto_3

    #@1b2
    .line 840
    .end local v35    # "i":I
    .end local v63    # "throwaway":B
    :sswitch_0
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    #@1b5
    move-result-object v56

    #@1b6
    .line 841
    .local v56, "netMask":Ljava/net/Inet4Address;
    const/16 v29, 0x4

    #@1b8
    .line 928
    .end local v56    # "netMask":Ljava/net/Inet4Address;
    :cond_d
    :goto_4
    move/from16 v0, v29

    #@1ba
    move/from16 v1, v58

    #@1bc
    if-eq v0, v1, :cond_b

    #@1be
    .line 929
    const/4 v10, 0x0

    #@1bf
    return-object v10

    #@1c0
    .line 844
    :sswitch_1
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    #@1c3
    move-result-object v31

    #@1c4
    .line 845
    .local v31, "gateway":Ljava/net/Inet4Address;
    const/16 v29, 0x4

    #@1c6
    .line 846
    goto :goto_4

    #@1c7
    .line 848
    .end local v31    # "gateway":Ljava/net/Inet4Address;
    :sswitch_2
    const/16 v29, 0x0

    #@1c9
    :goto_5
    move/from16 v0, v29

    #@1cb
    move/from16 v1, v58

    #@1cd
    if-ge v0, v1, :cond_d

    #@1cf
    .line 849
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    #@1d2
    move-result-object v10

    #@1d3
    move-object/from16 v0, v25

    #@1d5
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d8
    .line 848
    add-int/lit8 v29, v29, 0x4

    #@1da
    goto :goto_5

    #@1db
    .line 853
    :sswitch_3
    move/from16 v29, v58

    #@1dd
    .line 854
    const/4 v10, 0x0

    #@1de
    move-object/from16 v0, p0

    #@1e0
    move/from16 v1, v58

    #@1e2
    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    #@1e5
    move-result-object v33

    #@1e6
    .local v33, "hostName":Ljava/lang/String;
    goto :goto_4

    #@1e7
    .line 857
    .end local v33    # "hostName":Ljava/lang/String;
    :sswitch_4
    const/16 v29, 0x2

    #@1e9
    .line 858
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@1ec
    move-result v10

    #@1ed
    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@1f0
    move-result-object v55

    #@1f1
    .local v55, "mtu":Ljava/lang/Short;
    goto :goto_4

    #@1f2
    .line 861
    .end local v55    # "mtu":Ljava/lang/Short;
    :sswitch_5
    move/from16 v29, v58

    #@1f4
    .line 862
    const/4 v10, 0x0

    #@1f5
    move-object/from16 v0, p0

    #@1f7
    move/from16 v1, v58

    #@1f9
    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    #@1fc
    move-result-object v26

    #@1fd
    .local v26, "domainName":Ljava/lang/String;
    goto :goto_4

    #@1fe
    .line 865
    .end local v26    # "domainName":Ljava/lang/String;
    :sswitch_6
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    #@201
    move-result-object v21

    #@202
    .line 866
    .local v21, "bcAddr":Ljava/net/Inet4Address;
    const/16 v29, 0x4

    #@204
    .line 867
    goto :goto_4

    #@205
    .line 869
    .end local v21    # "bcAddr":Ljava/net/Inet4Address;
    :sswitch_7
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    #@208
    move-result-object v61

    #@209
    .line 870
    .local v61, "requestedIp":Ljava/net/Inet4Address;
    const/16 v29, 0x4

    #@20b
    .line 871
    goto :goto_4

    #@20c
    .line 873
    .end local v61    # "requestedIp":Ljava/net/Inet4Address;
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@20f
    move-result v10

    #@210
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@213
    move-result-object v52

    #@214
    .line 874
    .local v52, "leaseTime":Ljava/lang/Integer;
    const/16 v29, 0x4

    #@216
    .line 875
    goto :goto_4

    #@217
    .line 877
    .end local v52    # "leaseTime":Ljava/lang/Integer;
    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@21a
    move-result v24

    #@21b
    .line 878
    .local v24, "dhcpType":B
    const/16 v29, 0x1

    #@21d
    .line 879
    goto :goto_4

    #@21e
    .line 881
    .end local v24    # "dhcpType":B
    :sswitch_a
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    #@221
    move-result-object v62

    #@222
    .line 882
    .local v62, "serverIdentifier":Ljava/net/Inet4Address;
    const/16 v29, 0x4

    #@224
    .line 883
    goto :goto_4

    #@225
    .line 885
    .end local v62    # "serverIdentifier":Ljava/net/Inet4Address;
    :sswitch_b
    move/from16 v0, v58

    #@227
    new-array v0, v0, [B

    #@229
    move-object/from16 v30, v0

    #@22b
    .line 886
    .local v30, "expectedParams":[B
    move-object/from16 v0, p0

    #@22d
    move-object/from16 v1, v30

    #@22f
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@232
    .line 887
    move/from16 v29, v58

    #@234
    .line 888
    goto :goto_4

    #@235
    .line 890
    .end local v30    # "expectedParams":[B
    :sswitch_c
    move/from16 v29, v58

    #@237
    .line 891
    const/4 v10, 0x0

    #@238
    move-object/from16 v0, p0

    #@23a
    move/from16 v1, v58

    #@23c
    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    #@23f
    move-result-object v54

    #@240
    .local v54, "message":Ljava/lang/String;
    goto/16 :goto_4

    #@242
    .line 894
    .end local v54    # "message":Ljava/lang/String;
    :sswitch_d
    const/16 v29, 0x2

    #@244
    .line 895
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@247
    move-result v10

    #@248
    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@24b
    move-result-object v53

    #@24c
    .local v53, "maxMessageSize":Ljava/lang/Short;
    goto/16 :goto_4

    #@24e
    .line 898
    .end local v53    # "maxMessageSize":Ljava/lang/Short;
    :sswitch_e
    const/16 v29, 0x4

    #@250
    .line 899
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@253
    move-result v10

    #@254
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@257
    move-result-object v18

    #@258
    .local v18, "T1":Ljava/lang/Integer;
    goto/16 :goto_4

    #@25a
    .line 902
    .end local v18    # "T1":Ljava/lang/Integer;
    :sswitch_f
    const/16 v29, 0x4

    #@25c
    .line 903
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@25f
    move-result v10

    #@260
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@263
    move-result-object v19

    #@264
    .local v19, "T2":Ljava/lang/Integer;
    goto/16 :goto_4

    #@266
    .line 906
    .end local v19    # "T2":Ljava/lang/Integer;
    :sswitch_10
    move/from16 v29, v58

    #@268
    .line 908
    const/4 v10, 0x1

    #@269
    move-object/from16 v0, p0

    #@26b
    move/from16 v1, v58

    #@26d
    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    #@270
    move-result-object v69

    #@271
    .local v69, "vendorId":Ljava/lang/String;
    goto/16 :goto_4

    #@273
    .line 911
    .end local v69    # "vendorId":Ljava/lang/String;
    :sswitch_11
    move/from16 v0, v58

    #@275
    new-array v0, v0, [B

    #@277
    move-object/from16 v36, v0

    #@279
    .line 912
    .local v36, "id":[B
    move-object/from16 v0, p0

    #@27b
    move-object/from16 v1, v36

    #@27d
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@280
    .line 913
    move/from16 v29, v58

    #@282
    goto/16 :goto_4

    #@284
    .line 916
    .end local v36    # "id":[B
    :sswitch_12
    move/from16 v29, v58

    #@286
    .line 918
    const/4 v10, 0x1

    #@287
    move-object/from16 v0, p0

    #@289
    move/from16 v1, v58

    #@28b
    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    #@28e
    move-result-object v70

    #@28f
    .local v70, "vendorInfo":Ljava/lang/String;
    goto/16 :goto_4

    #@291
    .line 932
    .end local v29    # "expectedLen":I
    .end local v58    # "optionLen":I
    .end local v59    # "optionType":B
    .end local v70    # "vendorInfo":Ljava/lang/String;
    :catch_1
    move-exception v27

    #@292
    .line 933
    .local v27, "e":Ljava/nio/BufferUnderflowException;
    const/4 v10, 0x0

    #@293
    return-object v10

    #@294
    .line 939
    .end local v27    # "e":Ljava/nio/BufferUnderflowException;
    :cond_e
    packed-switch v24, :pswitch_data_0

    #@297
    .line 973
    :pswitch_0
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@299
    new-instance v11, Ljava/lang/StringBuilder;

    #@29b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@29e
    const-string/jumbo v12, "Unimplemented type: "

    #@2a1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a4
    move-result-object v11

    #@2a5
    move/from16 v0, v24

    #@2a7
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2aa
    move-result-object v11

    #@2ab
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ae
    move-result-object v11

    #@2af
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b2
    .line 974
    const/4 v10, 0x0

    #@2b3
    return-object v10

    #@2b4
    .line 940
    :pswitch_1
    const/4 v10, 0x0

    #@2b5
    return-object v10

    #@2b6
    .line 942
    :pswitch_2
    new-instance v2, Landroid/net/dhcp/DhcpDiscoverPacket;

    #@2b8
    invoke-direct {v2, v3, v4, v9, v5}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZ)V

    #@2bb
    .line 977
    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .local v2, "newPacket":Landroid/net/dhcp/DhcpPacket;
    :goto_6
    move-object/from16 v0, v21

    #@2bd
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    #@2bf
    .line 978
    move-object/from16 v0, v25

    #@2c1
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    #@2c3
    .line 979
    move-object/from16 v0, v26

    #@2c5
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    #@2c7
    .line 980
    move-object/from16 v0, v31

    #@2c9
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/Inet4Address;

    #@2cb
    .line 981
    move-object/from16 v0, v33

    #@2cd
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    #@2cf
    .line 982
    move-object/from16 v0, v52

    #@2d1
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    #@2d3
    .line 983
    move-object/from16 v0, v54

    #@2d5
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    #@2d7
    .line 984
    move-object/from16 v0, v55

    #@2d9
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    #@2db
    .line 985
    move-object/from16 v0, v61

    #@2dd
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    #@2df
    .line 986
    move-object/from16 v0, v30

    #@2e1
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    #@2e3
    .line 987
    move-object/from16 v0, v62

    #@2e5
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    #@2e7
    .line 988
    move-object/from16 v0, v56

    #@2e9
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    #@2eb
    .line 989
    move-object/from16 v0, v53

    #@2ed
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mMaxMessageSize:Ljava/lang/Short;

    #@2ef
    .line 990
    move-object/from16 v0, v18

    #@2f1
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mT1:Ljava/lang/Integer;

    #@2f3
    .line 991
    move-object/from16 v0, v19

    #@2f5
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mT2:Ljava/lang/Integer;

    #@2f7
    .line 992
    move-object/from16 v0, v69

    #@2f9
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mVendorId:Ljava/lang/String;

    #@2fb
    .line 993
    move-object/from16 v0, v70

    #@2fd
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    #@2ff
    .line 994
    return-object v2

    #@300
    .line 946
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    :pswitch_3
    new-instance v2, Landroid/net/dhcp/DhcpOfferPacket;

    #@302
    invoke-direct/range {v2 .. v9}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    #@305
    .line 948
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_6

    #@306
    .line 950
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_4
    new-instance v2, Landroid/net/dhcp/DhcpRequestPacket;

    #@308
    move-object v10, v2

    #@309
    move v11, v3

    #@30a
    move v12, v4

    #@30b
    move-object v13, v7

    #@30c
    move-object v14, v9

    #@30d
    move v15, v5

    #@30e
    invoke-direct/range {v10 .. v15}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    #@311
    .line 952
    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_6

    #@312
    .line 954
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    :pswitch_5
    new-instance v2, Landroid/net/dhcp/DhcpDeclinePacket;

    #@314
    move-object v10, v2

    #@315
    move v11, v3

    #@316
    move v12, v4

    #@317
    move-object v13, v7

    #@318
    move-object v14, v8

    #@319
    move-object/from16 v17, v9

    #@31b
    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpDeclinePacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    #@31e
    .line 957
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_6

    #@31f
    .line 959
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_6
    new-instance v2, Landroid/net/dhcp/DhcpAckPacket;

    #@321
    invoke-direct/range {v2 .. v9}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    #@324
    .line 961
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_6

    #@325
    .line 963
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_7
    new-instance v2, Landroid/net/dhcp/DhcpNakPacket;

    #@327
    move-object v10, v2

    #@328
    move v11, v3

    #@329
    move v12, v4

    #@32a
    move-object v13, v7

    #@32b
    move-object v14, v8

    #@32c
    move-object/from16 v17, v9

    #@32e
    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    #@331
    .line 966
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_6

    #@332
    .line 968
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_8
    new-instance v2, Landroid/net/dhcp/DhcpInformPacket;

    #@334
    move-object v10, v2

    #@335
    move v11, v3

    #@336
    move v12, v4

    #@337
    move-object v13, v7

    #@338
    move-object v14, v8

    #@339
    move-object/from16 v17, v9

    #@33b
    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpInformPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    #@33e
    .line 971
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto/16 :goto_6

    #@340
    .line 838
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0xc -> :sswitch_3
        0xf -> :sswitch_5
        0x1a -> :sswitch_4
        0x1c -> :sswitch_6
        0x2b -> :sswitch_12
        0x32 -> :sswitch_7
        0x33 -> :sswitch_8
        0x35 -> :sswitch_9
        0x36 -> :sswitch_a
        0x37 -> :sswitch_b
        0x38 -> :sswitch_c
        0x39 -> :sswitch_d
        0x3a -> :sswitch_e
        0x3b -> :sswitch_f
        0x3c -> :sswitch_10
        0x3d -> :sswitch_11
    .end sparse-switch

    #@38e
    .line 939
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public static decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;
    .locals 3
    .param p0, "packet"    # [B
    .param p1, "length"    # I
    .param p2, "pktType"    # I

    #@0
    .prologue
    .line 1002
    const/4 v1, 0x0

    #@1
    invoke-static {p0, v1, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@4
    move-result-object v1

    #@5
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@7
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@a
    move-result-object v0

    #@b
    .line 1003
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v0, p2}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method private static intAbs(S)I
    .locals 1
    .param p0, "v"    # S

    #@0
    .prologue
    .line 450
    const v0, 0xffff

    #@3
    and-int/2addr v0, p0

    #@4
    return v0
.end method

.method public static macToString([B)Ljava/lang/String;
    .locals 5
    .param p0, "mac"    # [B

    #@0
    .prologue
    .line 606
    const-string/jumbo v2, ""

    #@3
    .line 608
    .local v2, "macAddr":Ljava/lang/String;
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    array-length v3, p0

    #@5
    if-ge v1, v3, :cond_1

    #@7
    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "0"

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    aget-byte v4, p0, v1

    #@15
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 613
    .local v0, "hexString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2d
    move-result v4

    #@2e
    add-int/lit8 v4, v4, -0x2

    #@30
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    .line 615
    array-length v3, p0

    #@3d
    add-int/lit8 v3, v3, -0x1

    #@3f
    if-eq v1, v3, :cond_0

    #@41
    .line 616
    new-instance v3, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    const-string/jumbo v4, ":"

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    .line 608
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@57
    goto :goto_0

    #@58
    .line 620
    .end local v0    # "hexString":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private static readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "byteCount"    # I
    .param p2, "nullOk"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 653
    new-array v0, p1, [B

    #@3
    .line 654
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@6
    .line 655
    array-length v1, v0

    #@7
    .line 656
    .local v1, "length":I
    if-nez p2, :cond_0

    #@9
    .line 661
    const/4 v1, 0x0

    #@a
    :goto_0
    array-length v2, v0

    #@b
    if-ge v1, v2, :cond_0

    #@d
    .line 662
    aget-byte v2, v0, v1

    #@f
    if-nez v2, :cond_1

    #@11
    .line 667
    :cond_0
    new-instance v2, Ljava/lang/String;

    #@13
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@15
    invoke-direct {v2, v0, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@18
    return-object v2

    #@19
    .line 661
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0
.end method

.method private static readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;
    .locals 4
    .param p0, "packet"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 634
    const/4 v2, 0x0

    #@1
    .line 635
    .local v2, "result":Ljava/net/Inet4Address;
    const/4 v3, 0x4

    #@2
    new-array v1, v3, [B

    #@4
    .line 636
    .local v1, "ipAddr":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@7
    .line 639
    :try_start_0
    invoke-static {v1}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    #@a
    move-result-object v2

    #@b
    .end local v2    # "result":Ljava/net/Inet4Address;
    check-cast v2, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 646
    :goto_0
    return-object v2

    #@e
    .line 640
    :catch_0
    move-exception v0

    #@f
    .line 643
    .local v0, "ex":Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    #@10
    .restart local v2    # "result":Ljava/net/Inet4Address;
    goto :goto_0
.end method


# virtual methods
.method protected addCommonClientTlvs(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 597
    const/16 v0, 0x5dc

    #@2
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x39

    #@8
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V

    #@b
    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "android-dhcp-"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    const/16 v1, 0x3c

    #@23
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    #@26
    .line 599
    const-string/jumbo v0, "net.hostname"

    #@29
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    const/16 v1, 0xc

    #@2f
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    #@32
    .line 596
    return-void
.end method

.method public abstract buildPacket(ISS)Ljava/nio/ByteBuffer;
.end method

.method protected fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V
    .locals 15
    .param p1, "encap"    # I
    .param p2, "destIp"    # Ljava/net/Inet4Address;
    .param p3, "srcIp"    # Ljava/net/Inet4Address;
    .param p4, "destUdp"    # S
    .param p5, "srcUdp"    # S
    .param p6, "buf"    # Ljava/nio/ByteBuffer;
    .param p7, "requestCode"    # B
    .param p8, "broadcast"    # Z

    #@0
    .prologue
    .line 333
    invoke-virtual/range {p2 .. p2}, Ljava/net/Inet4Address;->getAddress()[B

    #@3
    move-result-object v2

    #@4
    .line 334
    .local v2, "destIpArray":[B
    invoke-virtual/range {p3 .. p3}, Ljava/net/Inet4Address;->getAddress()[B

    #@7
    move-result-object v7

    #@8
    .line 335
    .local v7, "srcIpArray":[B
    const/4 v5, 0x0

    #@9
    .line 336
    .local v5, "ipHeaderOffset":I
    const/4 v6, 0x0

    #@a
    .line 337
    .local v6, "ipLengthOffset":I
    const/4 v4, 0x0

    #@b
    .line 338
    .local v4, "ipChecksumOffset":I
    const/4 v3, 0x0

    #@c
    .line 339
    .local v3, "endIpHeader":I
    const/4 v9, 0x0

    #@d
    .line 340
    .local v9, "udpHeaderOffset":I
    const/4 v11, 0x0

    #@e
    .line 341
    .local v11, "udpLengthOffset":I
    const/4 v8, 0x0

    #@f
    .line 343
    .local v8, "udpChecksumOffset":I
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@12
    .line 344
    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@14
    move-object/from16 v0, p6

    #@16
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@19
    .line 346
    if-nez p1, :cond_0

    #@1b
    .line 347
    sget-object v13, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    #@1d
    move-object/from16 v0, p6

    #@1f
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@22
    .line 348
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@24
    move-object/from16 v0, p6

    #@26
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@29
    .line 349
    sget v13, Landroid/system/OsConstants;->ETH_P_IP:I

    #@2b
    int-to-short v13, v13

    #@2c
    move-object/from16 v0, p6

    #@2e
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@31
    .line 355
    :cond_0
    const/4 v13, 0x1

    #@32
    move/from16 v0, p1

    #@34
    if-gt v0, v13, :cond_1

    #@36
    .line 356
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@39
    move-result v5

    #@3a
    .line 357
    const/16 v13, 0x45

    #@3c
    move-object/from16 v0, p6

    #@3e
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@41
    .line 358
    const/16 v13, 0x10

    #@43
    move-object/from16 v0, p6

    #@45
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@48
    .line 359
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@4b
    move-result v6

    #@4c
    .line 360
    const/4 v13, 0x0

    #@4d
    move-object/from16 v0, p6

    #@4f
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@52
    .line 361
    const/4 v13, 0x0

    #@53
    move-object/from16 v0, p6

    #@55
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@58
    .line 362
    const/16 v13, 0x4000

    #@5a
    move-object/from16 v0, p6

    #@5c
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@5f
    .line 363
    const/16 v13, 0x40

    #@61
    move-object/from16 v0, p6

    #@63
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@66
    .line 364
    const/16 v13, 0x11

    #@68
    move-object/from16 v0, p6

    #@6a
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@6d
    .line 365
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@70
    move-result v4

    #@71
    .line 366
    const/4 v13, 0x0

    #@72
    move-object/from16 v0, p6

    #@74
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@77
    .line 368
    move-object/from16 v0, p6

    #@79
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@7c
    .line 369
    move-object/from16 v0, p6

    #@7e
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@81
    .line 370
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@84
    move-result v3

    #@85
    .line 373
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@88
    move-result v9

    #@89
    .line 374
    move-object/from16 v0, p6

    #@8b
    move/from16 v1, p5

    #@8d
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@90
    .line 375
    move-object/from16 v0, p6

    #@92
    move/from16 v1, p4

    #@94
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@97
    .line 376
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@9a
    move-result v11

    #@9b
    .line 377
    const/4 v13, 0x0

    #@9c
    move-object/from16 v0, p6

    #@9e
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@a1
    .line 378
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@a4
    move-result v8

    #@a5
    .line 379
    const/4 v13, 0x0

    #@a6
    move-object/from16 v0, p6

    #@a8
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@ab
    .line 383
    :cond_1
    invoke-virtual/range {p6 .. p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@ae
    .line 384
    const/4 v13, 0x1

    #@af
    move-object/from16 v0, p6

    #@b1
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@b4
    .line 385
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@b6
    array-length v13, v13

    #@b7
    int-to-byte v13, v13

    #@b8
    move-object/from16 v0, p6

    #@ba
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@bd
    .line 386
    const/4 v13, 0x0

    #@be
    move-object/from16 v0, p6

    #@c0
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@c3
    .line 387
    iget v13, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    #@c5
    move-object/from16 v0, p6

    #@c7
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@ca
    .line 388
    iget-short v13, p0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    #@cc
    move-object/from16 v0, p6

    #@ce
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@d1
    .line 390
    if-eqz p8, :cond_4

    #@d3
    .line 391
    const/16 v13, -0x8000

    #@d5
    move-object/from16 v0, p6

    #@d7
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@da
    .line 396
    :goto_0
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    #@dc
    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    #@df
    move-result-object v13

    #@e0
    move-object/from16 v0, p6

    #@e2
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@e5
    .line 397
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    #@e7
    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    #@ea
    move-result-object v13

    #@eb
    move-object/from16 v0, p6

    #@ed
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@f0
    .line 398
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    #@f2
    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    #@f5
    move-result-object v13

    #@f6
    move-object/from16 v0, p6

    #@f8
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@fb
    .line 399
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    #@fd
    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    #@100
    move-result-object v13

    #@101
    move-object/from16 v0, p6

    #@103
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@106
    .line 400
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@108
    move-object/from16 v0, p6

    #@10a
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@10d
    .line 401
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@110
    move-result v13

    #@111
    .line 402
    iget-object v14, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@113
    array-length v14, v14

    #@114
    rsub-int/lit8 v14, v14, 0x10

    #@116
    .line 401
    add-int/2addr v13, v14

    #@117
    add-int/lit8 v13, v13, 0x40

    #@119
    add-int/lit16 v13, v13, 0x80

    #@11b
    move-object/from16 v0, p6

    #@11d
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@120
    .line 405
    const v13, 0x63825363

    #@123
    move-object/from16 v0, p6

    #@125
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@128
    .line 406
    move-object/from16 v0, p6

    #@12a
    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpPacket;->finishPacket(Ljava/nio/ByteBuffer;)V

    #@12d
    .line 409
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@130
    move-result v13

    #@131
    and-int/lit8 v13, v13, 0x1

    #@133
    const/4 v14, 0x1

    #@134
    if-ne v13, v14, :cond_2

    #@136
    .line 410
    const/4 v13, 0x0

    #@137
    move-object/from16 v0, p6

    #@139
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@13c
    .line 415
    :cond_2
    const/4 v13, 0x1

    #@13d
    move/from16 v0, p1

    #@13f
    if-gt v0, v13, :cond_3

    #@141
    .line 417
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@144
    move-result v13

    #@145
    sub-int/2addr v13, v9

    #@146
    int-to-short v10, v13

    #@147
    .line 418
    .local v10, "udpLen":S
    move-object/from16 v0, p6

    #@149
    invoke-virtual {v0, v11, v10}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    #@14c
    .line 425
    add-int/lit8 v13, v4, 0x2

    #@14e
    move-object/from16 v0, p6

    #@150
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@153
    move-result v13

    #@154
    invoke-static {v13}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    #@157
    move-result v13

    #@158
    add-int/lit8 v12, v13, 0x0

    #@15a
    .line 426
    .local v12, "udpSeed":I
    add-int/lit8 v13, v4, 0x4

    #@15c
    move-object/from16 v0, p6

    #@15e
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@161
    move-result v13

    #@162
    invoke-static {v13}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    #@165
    move-result v13

    #@166
    add-int/2addr v12, v13

    #@167
    .line 427
    add-int/lit8 v13, v4, 0x6

    #@169
    move-object/from16 v0, p6

    #@16b
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@16e
    move-result v13

    #@16f
    invoke-static {v13}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    #@172
    move-result v13

    #@173
    add-int/2addr v12, v13

    #@174
    .line 428
    add-int/lit8 v13, v4, 0x8

    #@176
    move-object/from16 v0, p6

    #@178
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@17b
    move-result v13

    #@17c
    invoke-static {v13}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    #@17f
    move-result v13

    #@180
    add-int/2addr v12, v13

    #@181
    .line 431
    add-int/lit8 v12, v12, 0x11

    #@183
    .line 432
    add-int/2addr v12, v10

    #@184
    .line 436
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@187
    move-result v13

    #@188
    .line 434
    move-object/from16 v0, p6

    #@18a
    invoke-direct {p0, v0, v12, v9, v13}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    #@18d
    move-result v13

    #@18e
    int-to-short v13, v13

    #@18f
    move-object/from16 v0, p6

    #@191
    invoke-virtual {v0, v8, v13}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    #@194
    .line 438
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@197
    move-result v13

    #@198
    sub-int/2addr v13, v5

    #@199
    int-to-short v13, v13

    #@19a
    move-object/from16 v0, p6

    #@19c
    invoke-virtual {v0, v6, v13}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    #@19f
    .line 441
    const/4 v13, 0x0

    #@1a0
    move-object/from16 v0, p6

    #@1a2
    invoke-direct {p0, v0, v13, v5, v3}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    #@1a5
    move-result v13

    #@1a6
    int-to-short v13, v13

    #@1a7
    .line 440
    move-object/from16 v0, p6

    #@1a9
    invoke-virtual {v0, v4, v13}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    #@1ac
    .line 332
    .end local v10    # "udpLen":S
    .end local v12    # "udpSeed":I
    :cond_3
    return-void

    #@1ad
    .line 393
    :cond_4
    const/4 v13, 0x0

    #@1ae
    move-object/from16 v0, p6

    #@1b0
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@1b3
    goto/16 :goto_0
.end method

.method abstract finishPacket(Ljava/nio/ByteBuffer;)V
.end method

.method public getClientId()[B
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 319
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@4
    array-length v1, v1

    #@5
    add-int/lit8 v1, v1, 0x1

    #@7
    new-array v0, v1, [B

    #@9
    .line 320
    .local v0, "clientId":[B
    aput-byte v4, v0, v3

    #@b
    .line 321
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@d
    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@f
    array-length v2, v2

    #@10
    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@13
    .line 322
    return-object v0
.end method

.method public getClientMac()[B
    .locals 1

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@2
    return-object v0
.end method

.method public getLeaseTimeMillis()J
    .locals 4

    #@0
    .prologue
    .line 1050
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    #@6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v0

    #@a
    const/4 v1, -0x1

    #@b
    if-ne v0, v1, :cond_1

    #@d
    .line 1051
    :cond_0
    const-wide/16 v0, 0x0

    #@f
    return-wide v0

    #@10
    .line 1052
    :cond_1
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    #@12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v0

    #@16
    if-ltz v0, :cond_2

    #@18
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    #@1a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1d
    move-result v0

    #@1e
    const/16 v1, 0x3c

    #@20
    if-ge v0, v1, :cond_2

    #@22
    .line 1053
    const-wide/32 v0, 0xea60

    #@25
    return-wide v0

    #@26
    .line 1055
    :cond_2
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    #@28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result v0

    #@2c
    int-to-long v0, v0

    #@2d
    const-wide v2, 0xffffffffL

    #@32
    and-long/2addr v0, v2

    #@33
    const-wide/16 v2, 0x3e8

    #@35
    mul-long/2addr v0, v2

    #@36
    return-wide v0
.end method

.method public getTransactionId()I
    .locals 1

    #@0
    .prologue
    .line 305
    iget v0, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    #@2
    return v0
.end method

.method public toDhcpResults()Landroid/net/DhcpResults;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1010
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    #@3
    .line 1011
    .local v1, "ipAddress":Ljava/net/Inet4Address;
    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    #@5
    invoke-virtual {v1, v4}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 1012
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    #@d
    .line 1013
    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    #@f
    invoke-virtual {v1, v4}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 1014
    return-object v5

    #@16
    .line 1019
    :cond_0
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 1021
    :try_start_0
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    #@1c
    invoke-static {v4}, Landroid/net/NetworkUtils;->netmaskToPrefixLength(Ljava/net/Inet4Address;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result v2

    #@20
    .line 1030
    .local v2, "prefixLength":I
    :goto_0
    new-instance v3, Landroid/net/DhcpResults;

    #@22
    invoke-direct {v3}, Landroid/net/DhcpResults;-><init>()V

    #@25
    .line 1032
    .local v3, "results":Landroid/net/DhcpResults;
    :try_start_1
    new-instance v4, Landroid/net/LinkAddress;

    #@27
    invoke-direct {v4, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@2a
    iput-object v4, v3, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@2c
    .line 1036
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/Inet4Address;

    #@2e
    iput-object v4, v3, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    #@30
    .line 1037
    iget-object v4, v3, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    #@32
    iget-object v5, p0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    #@34
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@37
    .line 1038
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    #@39
    iput-object v4, v3, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    #@3b
    .line 1039
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    #@3d
    iput-object v4, v3, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    #@3f
    .line 1040
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    #@41
    iput-object v4, v3, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    #@43
    .line 1041
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    #@45
    if-eqz v4, :cond_2

    #@47
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    #@49
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@4c
    move-result v4

    #@4d
    :goto_1
    iput v4, v3, Landroid/net/DhcpResults;->leaseDuration:I

    #@4f
    .line 1042
    return-object v3

    #@50
    .line 1022
    .end local v2    # "prefixLength":I
    .end local v3    # "results":Landroid/net/DhcpResults;
    :catch_0
    move-exception v0

    #@51
    .line 1024
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-object v5

    #@52
    .line 1027
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-static {v1}, Landroid/net/NetworkUtils;->getImplicitNetmask(Ljava/net/Inet4Address;)I

    #@55
    move-result v2

    #@56
    .restart local v2    # "prefixLength":I
    goto :goto_0

    #@57
    .line 1033
    .restart local v3    # "results":Landroid/net/DhcpResults;
    :catch_1
    move-exception v0

    #@58
    .line 1034
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    return-object v5

    #@59
    .line 1041
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    const/4 v4, -0x1

    #@5a
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 624
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@2
    invoke-static {v1}, Landroid/net/dhcp/DhcpPacket;->macToString([B)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 626
    .local v0, "macAddr":Ljava/lang/String;
    return-object v0
.end method
