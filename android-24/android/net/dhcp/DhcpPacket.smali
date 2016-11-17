.class abstract Landroid/net/dhcp/DhcpPacket;
.super Ljava/lang/Object;
.source "DhcpPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/DhcpPacket$ParseException;
    }
.end annotation


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

.field private static final DHCP_MAGIC_COOKIE:I = 0x63825363

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

.field public static final HWADDR_LEN:I = 0x10

.field public static final INADDR_ANY:Ljava/net/Inet4Address;

.field public static final INADDR_BROADCAST:Ljava/net/Inet4Address;

.field public static final INFINITE_LEASE:I = -0x1

.field private static final IP_FLAGS_OFFSET:S = 0x4000s

.field private static final IP_TOS_LOWDELAY:B = 0x10t

.field private static final IP_TTL:B = 0x40t

.field private static final IP_TYPE_UDP:B = 0x11t

.field private static final IP_VERSION_HEADER_LEN:B = 0x45t

.field protected static final MAX_LENGTH:I = 0x5dc

.field private static final MAX_MTU:I = 0x5dc

.field public static final MAX_OPTION_LEN:I = 0xff

.field public static final MINIMUM_LEASE:I = 0x3c

.field private static final MIN_MTU:I = 0x500

.field public static final MIN_PACKET_LENGTH_BOOTP:I = 0xec

.field public static final MIN_PACKET_LENGTH_L2:I = 0x116

.field public static final MIN_PACKET_LENGTH_L3:I = 0x108

.field protected static final TAG:Ljava/lang/String; = "DhcpPacket"

.field static testOverrideHostname:Ljava/lang/String;

.field static testOverrideVendorId:Ljava/lang/String;


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

.field protected mGateways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 38
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    #@3
    check-cast v0, Ljava/net/Inet4Address;

    #@5
    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@7
    .line 39
    sget-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    #@9
    check-cast v0, Ljava/net/Inet4Address;

    #@b
    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    #@d
    .line 40
    const/4 v0, 0x6

    #@e
    new-array v0, v0, [B

    #@10
    fill-array-data v0, :array_0

    #@13
    sput-object v0, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    #@15
    .line 308
    sput-object v1, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    #@17
    .line 309
    sput-object v1, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    #@19
    .line 29
    return-void

    #@1a
    .line 40
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
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 314
    iput p1, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    #@5
    .line 315
    iput-short p2, p0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    #@7
    .line 316
    iput-object p3, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    #@9
    .line 317
    iput-object p4, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    #@b
    .line 318
    iput-object p5, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    #@d
    .line 319
    iput-object p6, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    #@f
    .line 320
    iput-object p7, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@11
    .line 321
    iput-boolean p8, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    #@13
    .line 313
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BB)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # B

    #@0
    .prologue
    .line 524
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@3
    .line 525
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@7
    .line 526
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@a
    .line 523
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 588
    if-eqz p2, :cond_0

    #@2
    .line 589
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@5
    .line 590
    const/4 v0, 0x4

    #@6
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@9
    .line 591
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@c
    move-result v0

    #@d
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@10
    .line 587
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
    .line 577
    if-eqz p2, :cond_0

    #@2
    .line 578
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@5
    .line 579
    const/4 v0, 0x2

    #@6
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@9
    .line 580
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    #@c
    move-result v0

    #@d
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@10
    .line 576
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
    .line 600
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
    .line 598
    return-void

    #@b
    .line 601
    :catch_0
    move-exception v0

    #@c
    .line 602
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
    .line 548
    if-eqz p2, :cond_0

    #@2
    .line 549
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, p1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    #@9
    .line 547
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
    .line 557
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
    .line 559
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@e
    move-result v3

    #@f
    mul-int/lit8 v2, v3, 0x4

    #@11
    .line 560
    .local v2, "optionLen":I
    if-le v2, v6, :cond_2

    #@13
    .line 561
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
    .line 562
    const-string/jumbo v5, " vs. "

    #@28
    .line 561
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
    .line 565
    :cond_2
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@3b
    .line 566
    int-to-byte v3, v2

    #@3c
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@3f
    .line 568
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
    .line 569
    .local v0, "addr":Ljava/net/Inet4Address;
    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    #@52
    move-result-object v3

    #@53
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@56
    goto :goto_0

    #@57
    .line 556
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
    .line 533
    if-eqz p2, :cond_1

    #@4
    .line 534
    array-length v0, p2

    #@5
    if-le v0, v3, :cond_0

    #@7
    .line 535
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
    .line 536
    array-length v2, p2

    #@16
    .line 535
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 536
    const-string/jumbo v2, " vs. "

    #@1d
    .line 535
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
    .line 538
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@30
    .line 539
    array-length v0, p2

    #@31
    int-to-byte v0, v0

    #@32
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@35
    .line 540
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@38
    .line 532
    :cond_1
    return-void
.end method

.method protected static addTlvEnd(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 610
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@4
    .line 609
    return-void
.end method

.method public static buildAckPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
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
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
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
    .line 1196
    .local p9, "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local p10, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v1, Landroid/net/dhcp/DhcpAckPacket;

    #@2
    .line 1197
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
    .line 1196
    invoke-direct/range {v1 .. v8}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    #@d
    .line 1198
    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v0, p9

    #@f
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    #@11
    .line 1199
    move-object/from16 v0, p10

    #@13
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    #@15
    .line 1200
    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    #@17
    .line 1201
    move-object/from16 v0, p12

    #@19
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    #@1b
    .line 1202
    move-object/from16 v0, p7

    #@1d
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    #@1f
    .line 1203
    move-object/from16 v0, p11

    #@21
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    #@23
    .line 1204
    move-object/from16 v0, p8

    #@25
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    #@27
    .line 1205
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
    .line 1161
    new-instance v0, Landroid/net/dhcp/DhcpDiscoverPacket;

    #@2
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZ)V

    #@5
    .line 1163
    .local v0, "pkt":Landroid/net/dhcp/DhcpPacket;
    iput-object p5, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    #@7
    .line 1164
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
    .line 1213
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
    .line 1215
    .local v0, "pkt":Landroid/net/dhcp/DhcpPacket;
    const-string/jumbo v1, "requested address not available"

    #@f
    iput-object v1, v0, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    #@11
    .line 1216
    iput-object p3, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    #@13
    .line 1217
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

.method public static buildOfferPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
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
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
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
    .line 1176
    .local p9, "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local p10, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v1, Landroid/net/dhcp/DhcpOfferPacket;

    #@2
    .line 1177
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
    .line 1176
    invoke-direct/range {v1 .. v8}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    #@d
    .line 1178
    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v0, p9

    #@f
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    #@11
    .line 1179
    move-object/from16 v0, p10

    #@13
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    #@15
    .line 1180
    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    #@17
    .line 1181
    move-object/from16 v0, p12

    #@19
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    #@1b
    .line 1182
    move-object/from16 v0, p11

    #@1d
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    #@1f
    .line 1183
    move-object/from16 v0, p7

    #@21
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    #@23
    .line 1184
    move-object/from16 v0, p8

    #@25
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    #@27
    .line 1185
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
    .line 1227
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
    .line 1229
    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    #@c
    .line 1230
    iput-object p7, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    #@e
    .line 1231
    move-object/from16 v0, p9

    #@10
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    #@12
    .line 1232
    move-object/from16 v0, p8

    #@14
    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    #@16
    .line 1233
    const/16 v2, 0x43

    #@18
    const/16 v3, 0x44

    #@1a
    invoke-virtual {v1, p0, v2, v3}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    #@1d
    move-result-object v7

    #@1e
    .line 1234
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
    .line 482
    move v6, p2

    #@5
    .line 483
    .local v6, "sum":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@8
    move-result v1

    #@9
    .line 487
    .local v1, "bufPosition":I
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@c
    .line 488
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    #@f
    move-result-object v5

    #@10
    .line 491
    .local v5, "shortBuf":Ljava/nio/ShortBuffer;
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@13
    .line 493
    sub-int v8, p4, p3

    #@15
    div-int/lit8 v8, v8, 0x2

    #@17
    new-array v4, v8, [S

    #@19
    .line 494
    .local v4, "shortArray":[S
    invoke-virtual {v5, v4}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    #@1c
    .line 496
    array-length v8, v4

    #@1d
    :goto_0
    if-ge v7, v8, :cond_0

    #@1f
    aget-short v3, v4, v7

    #@21
    .line 497
    .local v3, "s":S
    invoke-static {v3}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    #@24
    move-result v9

    #@25
    add-int/2addr v6, v9

    #@26
    .line 496
    add-int/lit8 v7, v7, 0x1

    #@28
    goto :goto_0

    #@29
    .line 500
    .end local v3    # "s":S
    :cond_0
    array-length v7, v4

    #@2a
    mul-int/lit8 v7, v7, 0x2

    #@2c
    add-int/2addr p3, v7

    #@2d
    .line 503
    if-eq p4, p3, :cond_2

    #@2f
    .line 504
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get(I)B

    #@32
    move-result v7

    #@33
    int-to-short v0, v7

    #@34
    .line 507
    .local v0, "b":S
    if-gez v0, :cond_1

    #@36
    .line 508
    add-int/lit16 v7, v0, 0x100

    #@38
    int-to-short v0, v7

    #@39
    .line 511
    :cond_1
    mul-int/lit16 v7, v0, 0x100

    #@3b
    add-int/2addr v6, v7

    #@3c
    .line 514
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
    .line 515
    shr-int/lit8 v7, v6, 0x10

    #@45
    and-int/2addr v7, v10

    #@46
    add-int/2addr v7, v6

    #@47
    and-int v6, v7, v10

    #@49
    .line 516
    not-int v2, v6

    #@4a
    .line 517
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
    .locals 72
    .param p0, "packet"    # Ljava/nio/ByteBuffer;
    .param p1, "pktType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/dhcp/DhcpPacket$ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 738
    new-instance v25, Ljava/util/ArrayList;

    #@2
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 739
    .local v25, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v32, Ljava/util/ArrayList;

    #@7
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 740
    .local v32, "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    const/16 v63, 0x0

    #@c
    .line 741
    .local v63, "serverIdentifier":Ljava/net/Inet4Address;
    const/16 v57, 0x0

    #@e
    .line 742
    .local v57, "netMask":Ljava/net/Inet4Address;
    const/16 v55, 0x0

    #@10
    .line 743
    .local v55, "message":Ljava/lang/String;
    const/16 v70, 0x0

    #@12
    .line 744
    .local v70, "vendorId":Ljava/lang/String;
    const/16 v71, 0x0

    #@14
    .line 745
    .local v71, "vendorInfo":Ljava/lang/String;
    const/16 v31, 0x0

    #@16
    .line 746
    .local v31, "expectedParams":[B
    const/16 v34, 0x0

    #@18
    .line 747
    .local v34, "hostName":Ljava/lang/String;
    const/16 v26, 0x0

    #@1a
    .line 748
    .local v26, "domainName":Ljava/lang/String;
    const/4 v6, 0x0

    #@1b
    .line 749
    .local v6, "ipSrc":Ljava/net/Inet4Address;
    const/16 v40, 0x0

    #@1d
    .line 750
    .local v40, "ipDst":Ljava/net/Inet4Address;
    const/16 v21, 0x0

    #@1f
    .line 751
    .local v21, "bcAddr":Ljava/net/Inet4Address;
    const/16 v62, 0x0

    #@21
    .line 757
    .local v62, "requestedIp":Ljava/net/Inet4Address;
    const/16 v56, 0x0

    #@23
    .line 758
    .local v56, "mtu":Ljava/lang/Short;
    const/16 v54, 0x0

    #@25
    .line 759
    .local v54, "maxMessageSize":Ljava/lang/Short;
    const/16 v53, 0x0

    #@27
    .line 760
    .local v53, "leaseTime":Ljava/lang/Integer;
    const/16 v18, 0x0

    #@29
    .line 761
    .local v18, "T1":Ljava/lang/Integer;
    const/16 v19, 0x0

    #@2b
    .line 764
    .local v19, "T2":Ljava/lang/Integer;
    const/16 v24, -0x1

    #@2d
    .line 766
    .local v24, "dhcpType":B
    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@2f
    move-object/from16 v0, p0

    #@31
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@34
    .line 769
    if-nez p1, :cond_1

    #@36
    .line 770
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@39
    move-result v10

    #@3a
    const/16 v11, 0x116

    #@3c
    if-ge v10, v11, :cond_0

    #@3e
    .line 771
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    #@40
    sget v11, Landroid/net/metrics/DhcpErrorEvent;->L2_TOO_SHORT:I

    #@42
    .line 772
    const-string/jumbo v12, "L2 packet too short, %d < %d"

    #@45
    .line 771
    const/4 v13, 0x2

    #@46
    new-array v13, v13, [Ljava/lang/Object;

    #@48
    .line 772
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@4b
    move-result v14

    #@4c
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f
    move-result-object v14

    #@50
    const/16 v17, 0x0

    #@52
    aput-object v14, v13, v17

    #@54
    const/16 v14, 0x116

    #@56
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@59
    move-result-object v14

    #@5a
    const/16 v17, 0x1

    #@5c
    aput-object v14, v13, v17

    #@5e
    .line 771
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    #@61
    throw v10

    #@62
    .line 775
    :cond_0
    const/4 v10, 0x6

    #@63
    new-array v0, v10, [B

    #@65
    move-object/from16 v50, v0

    #@67
    .line 776
    .local v50, "l2dst":[B
    const/4 v10, 0x6

    #@68
    new-array v0, v10, [B

    #@6a
    move-object/from16 v51, v0

    #@6c
    .line 778
    .local v51, "l2src":[B
    move-object/from16 v0, p0

    #@6e
    move-object/from16 v1, v50

    #@70
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@73
    .line 779
    move-object/from16 v0, p0

    #@75
    move-object/from16 v1, v51

    #@77
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@7a
    .line 781
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@7d
    move-result v52

    #@7e
    .line 783
    .local v52, "l2type":S
    sget v10, Landroid/system/OsConstants;->ETH_P_IP:I

    #@80
    move/from16 v0, v52

    #@82
    if-eq v0, v10, :cond_1

    #@84
    .line 784
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    #@86
    sget v11, Landroid/net/metrics/DhcpErrorEvent;->L2_WRONG_ETH_TYPE:I

    #@88
    .line 785
    const-string/jumbo v12, "Unexpected L2 type 0x%04x, expected 0x%04x"

    #@8b
    .line 784
    const/4 v13, 0x2

    #@8c
    new-array v13, v13, [Ljava/lang/Object;

    #@8e
    .line 785
    invoke-static/range {v52 .. v52}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@91
    move-result-object v14

    #@92
    const/16 v17, 0x0

    #@94
    aput-object v14, v13, v17

    #@96
    sget v14, Landroid/system/OsConstants;->ETH_P_IP:I

    #@98
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9b
    move-result-object v14

    #@9c
    const/16 v17, 0x1

    #@9e
    aput-object v14, v13, v17

    #@a0
    .line 784
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    #@a3
    throw v10

    #@a4
    .line 789
    .end local v50    # "l2dst":[B
    .end local v51    # "l2src":[B
    .end local v52    # "l2type":S
    :cond_1
    const/4 v10, 0x1

    #@a5
    move/from16 v0, p1

    #@a7
    if-gt v0, v10, :cond_6

    #@a9
    .line 790
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@ac
    move-result v10

    #@ad
    const/16 v11, 0x108

    #@af
    if-ge v10, v11, :cond_2

    #@b1
    .line 791
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    #@b3
    sget v11, Landroid/net/metrics/DhcpErrorEvent;->L3_TOO_SHORT:I

    #@b5
    .line 792
    const-string/jumbo v12, "L3 packet too short, %d < %d"

    #@b8
    .line 791
    const/4 v13, 0x2

    #@b9
    new-array v13, v13, [Ljava/lang/Object;

    #@bb
    .line 792
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@be
    move-result v14

    #@bf
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c2
    move-result-object v14

    #@c3
    const/16 v17, 0x0

    #@c5
    aput-object v14, v13, v17

    #@c7
    const/16 v14, 0x108

    #@c9
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cc
    move-result-object v14

    #@cd
    const/16 v17, 0x1

    #@cf
    aput-object v14, v13, v17

    #@d1
    .line 791
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    #@d4
    throw v10

    #@d5
    .line 795
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@d8
    move-result v47

    #@d9
    .line 796
    .local v47, "ipTypeAndLength":B
    move/from16 v0, v47

    #@db
    and-int/lit16 v10, v0, 0xf0

    #@dd
    shr-int/lit8 v48, v10, 0x4

    #@df
    .line 797
    .local v48, "ipVersion":I
    const/4 v10, 0x4

    #@e0
    move/from16 v0, v48

    #@e2
    if-eq v0, v10, :cond_3

    #@e4
    .line 798
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    #@e6
    .line 799
    sget v11, Landroid/net/metrics/DhcpErrorEvent;->L3_NOT_IPV4:I

    #@e8
    const-string/jumbo v12, "Invalid IP version %d"

    #@eb
    .line 798
    const/4 v13, 0x1

    #@ec
    new-array v13, v13, [Ljava/lang/Object;

    #@ee
    .line 799
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f1
    move-result-object v14

    #@f2
    const/16 v17, 0x0

    #@f4
    aput-object v14, v13, v17

    #@f6
    .line 798
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    #@f9
    throw v10

    #@fa
    .line 803
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@fd
    move-result v39

    #@fe
    .line 804
    .local v39, "ipDiffServicesField":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@101
    move-result v46

    #@102
    .line 805
    .local v46, "ipTotalLength":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@105
    move-result v43

    #@106
    .line 806
    .local v43, "ipIdentification":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@109
    move-result v41

    #@10a
    .line 807
    .local v41, "ipFlags":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@10d
    move-result v42

    #@10e
    .line 808
    .local v42, "ipFragOffset":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@111
    move-result v45

    #@112
    .line 809
    .local v45, "ipTTL":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@115
    move-result v44

    #@116
    .line 810
    .local v44, "ipProto":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@119
    move-result v38

    #@11a
    .line 812
    .local v38, "ipChksm":S
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    #@11d
    move-result-object v6

    #@11e
    .line 813
    .local v6, "ipSrc":Ljava/net/Inet4Address;
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    #@121
    move-result-object v40

    #@122
    .line 815
    .local v40, "ipDst":Ljava/net/Inet4Address;
    const/16 v10, 0x11

    #@124
    move/from16 v0, v44

    #@126
    if-eq v0, v10, :cond_4

    #@128
    .line 816
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    #@12a
    .line 817
    sget v11, Landroid/net/metrics/DhcpErrorEvent;->L4_NOT_UDP:I

    #@12c
    const-string/jumbo v12, "Protocol not UDP: %d"

    #@12f
    .line 816
    const/4 v13, 0x1

    #@130
    new-array v13, v13, [Ljava/lang/Object;

    #@132
    .line 817
    invoke-static/range {v44 .. v44}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@135
    move-result-object v14

    #@136
    const/16 v17, 0x0

    #@138
    aput-object v14, v13, v17

    #@13a
    .line 816
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    #@13d
    throw v10

    #@13e
    .line 823
    :cond_4
    and-int/lit8 v10, v47, 0xf

    #@140
    add-int/lit8 v61, v10, -0x5

    #@142
    .line 824
    .local v61, "optionWords":I
    const/16 v36, 0x0

    #@144
    .local v36, "i":I
    :goto_0
    move/from16 v0, v36

    #@146
    move/from16 v1, v61

    #@148
    if-ge v0, v1, :cond_5

    #@14a
    .line 825
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@14d
    .line 824
    add-int/lit8 v36, v36, 0x1

    #@14f
    goto :goto_0

    #@150
    .line 829
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@153
    move-result v69

    #@154
    .line 830
    .local v69, "udpSrcPort":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@157
    move-result v67

    #@158
    .line 831
    .local v67, "udpDstPort":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@15b
    move-result v68

    #@15c
    .line 832
    .local v68, "udpLen":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@15f
    move-result v66

    #@160
    .line 837
    .local v66, "udpChkSum":S
    move/from16 v0, v69

    #@162
    move/from16 v1, v67

    #@164
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpPacket;->isPacketToOrFromClient(SS)Z

    #@167
    move-result v10

    #@168
    if-nez v10, :cond_6

    #@16a
    .line 838
    move/from16 v0, v69

    #@16c
    move/from16 v1, v67

    #@16e
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpPacket;->isPacketServerToServer(SS)Z

    #@171
    move-result v10

    #@172
    if-eqz v10, :cond_8

    #@174
    .line 849
    .end local v6    # "ipSrc":Ljava/net/Inet4Address;
    .end local v36    # "i":I
    .end local v38    # "ipChksm":S
    .end local v39    # "ipDiffServicesField":B
    .end local v40    # "ipDst":Ljava/net/Inet4Address;
    .end local v41    # "ipFlags":B
    .end local v42    # "ipFragOffset":B
    .end local v43    # "ipIdentification":S
    .end local v44    # "ipProto":B
    .end local v45    # "ipTTL":B
    .end local v46    # "ipTotalLength":S
    .end local v47    # "ipTypeAndLength":B
    .end local v48    # "ipVersion":I
    .end local v61    # "optionWords":I
    .end local v66    # "udpChkSum":S
    .end local v67    # "udpDstPort":S
    .end local v68    # "udpLen":S
    .end local v69    # "udpSrcPort":S
    :cond_6
    const/4 v10, 0x2

    #@175
    move/from16 v0, p1

    #@177
    if-gt v0, v10, :cond_7

    #@179
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@17c
    move-result v10

    #@17d
    const/16 v11, 0xec

    #@17f
    if-ge v10, v11, :cond_9

    #@181
    .line 850
    :cond_7
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    #@183
    sget v11, Landroid/net/metrics/DhcpErrorEvent;->BOOTP_TOO_SHORT:I

    #@185
    .line 851
    const-string/jumbo v12, "Invalid type or BOOTP packet too short, %d < %d"

    #@188
    .line 850
    const/4 v13, 0x2

    #@189
    new-array v13, v13, [Ljava/lang/Object;

    #@18b
    .line 852
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@18e
    move-result v14

    #@18f
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@192
    move-result-object v14

    #@193
    const/16 v17, 0x0

    #@195
    aput-object v14, v13, v17

    #@197
    const/16 v14, 0xec

    #@199
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19c
    move-result-object v14

    #@19d
    const/16 v17, 0x1

    #@19f
    aput-object v14, v13, v17

    #@1a1
    .line 850
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    #@1a4
    throw v10

    #@1a5
    .line 843
    .restart local v6    # "ipSrc":Ljava/net/Inet4Address;
    .restart local v36    # "i":I
    .restart local v38    # "ipChksm":S
    .restart local v39    # "ipDiffServicesField":B
    .restart local v40    # "ipDst":Ljava/net/Inet4Address;
    .restart local v41    # "ipFlags":B
    .restart local v42    # "ipFragOffset":B
    .restart local v43    # "ipIdentification":S
    .restart local v44    # "ipProto":B
    .restart local v45    # "ipTTL":B
    .restart local v46    # "ipTotalLength":S
    .restart local v47    # "ipTypeAndLength":B
    .restart local v48    # "ipVersion":I
    .restart local v61    # "optionWords":I
    .restart local v66    # "udpChkSum":S
    .restart local v67    # "udpDstPort":S
    .restart local v68    # "udpLen":S
    .restart local v69    # "udpSrcPort":S
    :cond_8
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    #@1a7
    sget v11, Landroid/net/metrics/DhcpErrorEvent;->L4_WRONG_PORT:I

    #@1a9
    .line 844
    const-string/jumbo v12, "Unexpected UDP ports %d->%d"

    #@1ac
    .line 843
    const/4 v13, 0x2

    #@1ad
    new-array v13, v13, [Ljava/lang/Object;

    #@1af
    .line 844
    invoke-static/range {v69 .. v69}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@1b2
    move-result-object v14

    #@1b3
    const/16 v17, 0x0

    #@1b5
    aput-object v14, v13, v17

    #@1b7
    invoke-static/range {v67 .. v67}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@1ba
    move-result-object v14

    #@1bb
    const/16 v17, 0x1

    #@1bd
    aput-object v14, v13, v17

    #@1bf
    .line 843
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    #@1c2
    throw v10

    #@1c3
    .line 855
    .end local v6    # "ipSrc":Ljava/net/Inet4Address;
    .end local v36    # "i":I
    .end local v38    # "ipChksm":S
    .end local v39    # "ipDiffServicesField":B
    .end local v40    # "ipDst":Ljava/net/Inet4Address;
    .end local v41    # "ipFlags":B
    .end local v42    # "ipFragOffset":B
    .end local v43    # "ipIdentification":S
    .end local v44    # "ipProto":B
    .end local v45    # "ipTTL":B
    .end local v46    # "ipTotalLength":S
    .end local v47    # "ipTypeAndLength":B
    .end local v48    # "ipVersion":I
    .end local v61    # "optionWords":I
    .end local v66    # "udpChkSum":S
    .end local v67    # "udpDstPort":S
    .end local v68    # "udpLen":S
    .end local v69    # "udpSrcPort":S
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@1c6
    move-result v65

    #@1c7
    .line 856
    .local v65, "type":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@1ca
    move-result v35

    #@1cb
    .line 857
    .local v35, "hwType":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@1ce
    move-result v10

    #@1cf
    and-int/lit16 v0, v10, 0xff

    #@1d1
    move/from16 v20, v0

    #@1d3
    .line 858
    .local v20, "addrLen":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@1d6
    move-result v33

    #@1d7
    .line 859
    .local v33, "hops":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@1da
    move-result v3

    #@1db
    .line 860
    .local v3, "transactionId":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@1de
    move-result v4

    #@1df
    .line 861
    .local v4, "secs":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@1e2
    move-result v22

    #@1e3
    .line 862
    .local v22, "bootpFlags":S
    const v10, 0x8000

    #@1e6
    and-int v10, v10, v22

    #@1e8
    if-eqz v10, :cond_b

    #@1ea
    const/4 v5, 0x1

    #@1eb
    .line 863
    .local v5, "broadcast":Z
    :goto_1
    const/4 v10, 0x4

    #@1ec
    new-array v0, v10, [B

    #@1ee
    move-object/from16 v49, v0

    #@1f0
    .line 866
    .local v49, "ipv4addr":[B
    :try_start_0
    move-object/from16 v0, p0

    #@1f2
    move-object/from16 v1, v49

    #@1f4
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@1f7
    .line 867
    invoke-static/range {v49 .. v49}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    #@1fa
    move-result-object v7

    #@1fb
    check-cast v7, Ljava/net/Inet4Address;

    #@1fd
    .line 868
    .local v7, "clientIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    #@1ff
    move-object/from16 v1, v49

    #@201
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@204
    .line 869
    invoke-static/range {v49 .. v49}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    #@207
    move-result-object v8

    #@208
    check-cast v8, Ljava/net/Inet4Address;

    #@20a
    .line 870
    .local v8, "yourIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    #@20c
    move-object/from16 v1, v49

    #@20e
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@211
    .line 871
    invoke-static/range {v49 .. v49}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    #@214
    move-result-object v15

    #@215
    check-cast v15, Ljava/net/Inet4Address;

    #@217
    .line 872
    .local v15, "nextIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    #@219
    move-object/from16 v1, v49

    #@21b
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@21e
    .line 873
    invoke-static/range {v49 .. v49}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    #@221
    move-result-object v16

    #@222
    check-cast v16, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@224
    .line 885
    .local v16, "relayIp":Ljava/net/Inet4Address;
    const/16 v10, 0x10

    #@226
    move/from16 v0, v20

    #@228
    if-le v0, v10, :cond_a

    #@22a
    .line 886
    sget-object v10, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    #@22c
    array-length v0, v10

    #@22d
    move/from16 v20, v0

    #@22f
    .line 889
    :cond_a
    move/from16 v0, v20

    #@231
    new-array v9, v0, [B

    #@233
    .line 890
    .local v9, "clientMac":[B
    move-object/from16 v0, p0

    #@235
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@238
    .line 893
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    #@23b
    move-result v10

    #@23c
    rsub-int/lit8 v11, v20, 0x10

    #@23e
    add-int/2addr v10, v11

    #@23f
    add-int/lit8 v10, v10, 0x40

    #@241
    add-int/lit16 v10, v10, 0x80

    #@243
    move-object/from16 v0, p0

    #@245
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@248
    .line 897
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@24b
    move-result v23

    #@24c
    .line 899
    .local v23, "dhcpMagicCookie":I
    const v10, 0x63825363

    #@24f
    move/from16 v0, v23

    #@251
    if-eq v0, v10, :cond_c

    #@253
    .line 900
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    #@255
    sget v11, Landroid/net/metrics/DhcpErrorEvent;->DHCP_BAD_MAGIC_COOKIE:I

    #@257
    .line 901
    const-string/jumbo v12, "Bad magic cookie 0x%08x, should be 0x%08x"

    #@25a
    .line 900
    const/4 v13, 0x2

    #@25b
    new-array v13, v13, [Ljava/lang/Object;

    #@25d
    .line 902
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@260
    move-result-object v14

    #@261
    const/16 v17, 0x0

    #@263
    aput-object v14, v13, v17

    #@265
    const v14, 0x63825363

    #@268
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26b
    move-result-object v14

    #@26c
    const/16 v17, 0x1

    #@26e
    aput-object v14, v13, v17

    #@270
    .line 900
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    #@273
    throw v10

    #@274
    .line 862
    .end local v5    # "broadcast":Z
    .end local v7    # "clientIp":Ljava/net/Inet4Address;
    .end local v8    # "yourIp":Ljava/net/Inet4Address;
    .end local v9    # "clientMac":[B
    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .end local v16    # "relayIp":Ljava/net/Inet4Address;
    .end local v23    # "dhcpMagicCookie":I
    .end local v49    # "ipv4addr":[B
    :cond_b
    const/4 v5, 0x0

    #@275
    .restart local v5    # "broadcast":Z
    goto/16 :goto_1

    #@277
    .line 874
    .restart local v49    # "ipv4addr":[B
    :catch_0
    move-exception v29

    #@278
    .line 875
    .local v29, "ex":Ljava/net/UnknownHostException;
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    #@27a
    sget v11, Landroid/net/metrics/DhcpErrorEvent;->L3_INVALID_IP:I

    #@27c
    .line 876
    const-string/jumbo v12, "Invalid IPv4 address: %s"

    #@27f
    .line 875
    const/4 v13, 0x1

    #@280
    new-array v13, v13, [Ljava/lang/Object;

    #@282
    .line 876
    invoke-static/range {v49 .. v49}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@285
    move-result-object v14

    #@286
    const/16 v17, 0x0

    #@288
    aput-object v14, v13, v17

    #@28a
    .line 875
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    #@28d
    throw v10

    #@28e
    .line 906
    .end local v29    # "ex":Ljava/net/UnknownHostException;
    .restart local v7    # "clientIp":Ljava/net/Inet4Address;
    .restart local v8    # "yourIp":Ljava/net/Inet4Address;
    .restart local v9    # "clientMac":[B
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    .restart local v16    # "relayIp":Ljava/net/Inet4Address;
    .restart local v23    # "dhcpMagicCookie":I
    :cond_c
    const/16 v58, 0x1

    #@290
    .line 908
    .end local v18    # "T1":Ljava/lang/Integer;
    .end local v19    # "T2":Ljava/lang/Integer;
    .end local v21    # "bcAddr":Ljava/net/Inet4Address;
    .end local v24    # "dhcpType":B
    .end local v26    # "domainName":Ljava/lang/String;
    .end local v31    # "expectedParams":[B
    .end local v34    # "hostName":Ljava/lang/String;
    .end local v53    # "leaseTime":Ljava/lang/Integer;
    .end local v54    # "maxMessageSize":Ljava/lang/Short;
    .end local v55    # "message":Ljava/lang/String;
    .end local v56    # "mtu":Ljava/lang/Short;
    .end local v57    # "netMask":Ljava/net/Inet4Address;
    .end local v62    # "requestedIp":Ljava/net/Inet4Address;
    .end local v63    # "serverIdentifier":Ljava/net/Inet4Address;
    .end local v70    # "vendorId":Ljava/lang/String;
    .end local v71    # "vendorInfo":Ljava/lang/String;
    .local v58, "notFinishedOptions":Z
    :cond_d
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    #@293
    move-result v10

    #@294
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    #@297
    move-result v11

    #@298
    if-ge v10, v11, :cond_10

    #@29a
    if-eqz v58, :cond_10

    #@29c
    .line 909
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@29f
    move-result v60

    #@2a0
    .line 911
    .local v60, "optionType":B
    const/4 v10, -0x1

    #@2a1
    move/from16 v0, v60

    #@2a3
    if-ne v0, v10, :cond_e

    #@2a5
    .line 912
    const/16 v58, 0x0

    #@2a7
    goto :goto_2

    #@2a8
    .line 913
    :cond_e
    if-eqz v60, :cond_d

    #@2aa
    .line 916
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@2ad
    move-result v10

    #@2ae
    and-int/lit16 v0, v10, 0xff

    #@2b0
    move/from16 v59, v0

    #@2b2
    .line 917
    .local v59, "optionLen":I
    const/16 v30, 0x0

    #@2b4
    .line 919
    .local v30, "expectedLen":I
    sparse-switch v60, :sswitch_data_0

    #@2b7
    .line 1004
    const/16 v36, 0x0

    #@2b9
    .restart local v36    # "i":I
    :goto_3
    move/from16 v0, v36

    #@2bb
    move/from16 v1, v59

    #@2bd
    if-ge v0, v1, :cond_f

    #@2bf
    .line 1005
    add-int/lit8 v30, v30, 0x1

    #@2c1
    .line 1006
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@2c4
    move-result v64

    #@2c5
    .line 1004
    .local v64, "throwaway":B
    add-int/lit8 v36, v36, 0x1

    #@2c7
    goto :goto_3

    #@2c8
    .line 921
    .end local v36    # "i":I
    .end local v64    # "throwaway":B
    :sswitch_0
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    #@2cb
    move-result-object v57

    #@2cc
    .line 922
    .local v57, "netMask":Ljava/net/Inet4Address;
    const/16 v30, 0x4

    #@2ce
    .line 1010
    .end local v57    # "netMask":Ljava/net/Inet4Address;
    :cond_f
    :goto_4
    move/from16 v0, v30

    #@2d0
    move/from16 v1, v59

    #@2d2
    if-eq v0, v1, :cond_d

    #@2d4
    .line 1012
    sget v10, Landroid/net/metrics/DhcpErrorEvent;->DHCP_INVALID_OPTION_LENGTH:I

    #@2d6
    .line 1011
    move/from16 v0, v60

    #@2d8
    invoke-static {v10, v0}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    #@2db
    move-result v28

    #@2dc
    .line 1013
    .local v28, "errorCode":I
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    #@2de
    .line 1014
    const-string/jumbo v11, "Invalid length %d for option %d, expected %d"

    #@2e1
    .line 1013
    const/4 v12, 0x3

    #@2e2
    new-array v12, v12, [Ljava/lang/Object;

    #@2e4
    .line 1015
    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e7
    move-result-object v13

    #@2e8
    const/4 v14, 0x0

    #@2e9
    aput-object v13, v12, v14

    #@2eb
    invoke-static/range {v60 .. v60}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@2ee
    move-result-object v13

    #@2ef
    const/4 v14, 0x1

    #@2f0
    aput-object v13, v12, v14

    #@2f2
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f5
    move-result-object v13

    #@2f6
    const/4 v14, 0x2

    #@2f7
    aput-object v13, v12, v14

    #@2f9
    .line 1013
    move/from16 v0, v28

    #@2fb
    invoke-direct {v10, v0, v11, v12}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    #@2fe
    throw v10
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    #@2ff
    .line 1018
    .end local v28    # "errorCode":I
    .end local v30    # "expectedLen":I
    .end local v59    # "optionLen":I
    :catch_1
    move-exception v27

    #@300
    .line 1020
    .local v27, "e":Ljava/nio/BufferUnderflowException;
    sget v10, Landroid/net/metrics/DhcpErrorEvent;->BUFFER_UNDERFLOW:I

    #@302
    .line 1019
    move/from16 v0, v60

    #@304
    invoke-static {v10, v0}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    #@307
    move-result v28

    #@308
    .line 1021
    .restart local v28    # "errorCode":I
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    #@30a
    const-string/jumbo v11, "BufferUnderflowException"

    #@30d
    const/4 v12, 0x0

    #@30e
    new-array v12, v12, [Ljava/lang/Object;

    #@310
    move/from16 v0, v28

    #@312
    invoke-direct {v10, v0, v11, v12}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    #@315
    throw v10

    #@316
    .line 925
    .end local v27    # "e":Ljava/nio/BufferUnderflowException;
    .end local v28    # "errorCode":I
    .restart local v30    # "expectedLen":I
    .restart local v59    # "optionLen":I
    :sswitch_1
    const/16 v30, 0x0

    #@318
    :goto_5
    move/from16 v0, v30

    #@31a
    move/from16 v1, v59

    #@31c
    if-ge v0, v1, :cond_f

    #@31e
    .line 926
    :try_start_2
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    #@321
    move-result-object v10

    #@322
    move-object/from16 v0, v32

    #@324
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@327
    .line 925
    add-int/lit8 v30, v30, 0x4

    #@329
    goto :goto_5

    #@32a
    .line 930
    :sswitch_2
    const/16 v30, 0x0

    #@32c
    :goto_6
    move/from16 v0, v30

    #@32e
    move/from16 v1, v59

    #@330
    if-ge v0, v1, :cond_f

    #@332
    .line 931
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    #@335
    move-result-object v10

    #@336
    move-object/from16 v0, v25

    #@338
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33b
    .line 930
    add-int/lit8 v30, v30, 0x4

    #@33d
    goto :goto_6

    #@33e
    .line 935
    :sswitch_3
    move/from16 v30, v59

    #@340
    .line 936
    const/4 v10, 0x0

    #@341
    move-object/from16 v0, p0

    #@343
    move/from16 v1, v59

    #@345
    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    #@348
    move-result-object v34

    #@349
    .local v34, "hostName":Ljava/lang/String;
    goto :goto_4

    #@34a
    .line 939
    .end local v34    # "hostName":Ljava/lang/String;
    :sswitch_4
    const/16 v30, 0x2

    #@34c
    .line 940
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@34f
    move-result v10

    #@350
    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@353
    move-result-object v56

    #@354
    .local v56, "mtu":Ljava/lang/Short;
    goto/16 :goto_4

    #@356
    .line 943
    .end local v56    # "mtu":Ljava/lang/Short;
    :sswitch_5
    move/from16 v30, v59

    #@358
    .line 944
    const/4 v10, 0x0

    #@359
    move-object/from16 v0, p0

    #@35b
    move/from16 v1, v59

    #@35d
    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    #@360
    move-result-object v26

    #@361
    .local v26, "domainName":Ljava/lang/String;
    goto/16 :goto_4

    #@363
    .line 947
    .end local v26    # "domainName":Ljava/lang/String;
    :sswitch_6
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    #@366
    move-result-object v21

    #@367
    .line 948
    .local v21, "bcAddr":Ljava/net/Inet4Address;
    const/16 v30, 0x4

    #@369
    .line 949
    goto/16 :goto_4

    #@36b
    .line 951
    .end local v21    # "bcAddr":Ljava/net/Inet4Address;
    :sswitch_7
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    #@36e
    move-result-object v62

    #@36f
    .line 952
    .local v62, "requestedIp":Ljava/net/Inet4Address;
    const/16 v30, 0x4

    #@371
    .line 953
    goto/16 :goto_4

    #@373
    .line 955
    .end local v62    # "requestedIp":Ljava/net/Inet4Address;
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@376
    move-result v10

    #@377
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37a
    move-result-object v53

    #@37b
    .line 956
    .local v53, "leaseTime":Ljava/lang/Integer;
    const/16 v30, 0x4

    #@37d
    .line 957
    goto/16 :goto_4

    #@37f
    .line 959
    .end local v53    # "leaseTime":Ljava/lang/Integer;
    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@382
    move-result v24

    #@383
    .line 960
    .local v24, "dhcpType":B
    const/16 v30, 0x1

    #@385
    .line 961
    goto/16 :goto_4

    #@387
    .line 963
    .end local v24    # "dhcpType":B
    :sswitch_a
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    #@38a
    move-result-object v63

    #@38b
    .line 964
    .local v63, "serverIdentifier":Ljava/net/Inet4Address;
    const/16 v30, 0x4

    #@38d
    .line 965
    goto/16 :goto_4

    #@38f
    .line 967
    .end local v63    # "serverIdentifier":Ljava/net/Inet4Address;
    :sswitch_b
    move/from16 v0, v59

    #@391
    new-array v0, v0, [B

    #@393
    move-object/from16 v31, v0

    #@395
    .line 968
    .local v31, "expectedParams":[B
    move-object/from16 v0, p0

    #@397
    move-object/from16 v1, v31

    #@399
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@39c
    .line 969
    move/from16 v30, v59

    #@39e
    .line 970
    goto/16 :goto_4

    #@3a0
    .line 972
    .end local v31    # "expectedParams":[B
    :sswitch_c
    move/from16 v30, v59

    #@3a2
    .line 973
    const/4 v10, 0x0

    #@3a3
    move-object/from16 v0, p0

    #@3a5
    move/from16 v1, v59

    #@3a7
    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    #@3aa
    move-result-object v55

    #@3ab
    .local v55, "message":Ljava/lang/String;
    goto/16 :goto_4

    #@3ad
    .line 976
    .end local v55    # "message":Ljava/lang/String;
    :sswitch_d
    const/16 v30, 0x2

    #@3af
    .line 977
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@3b2
    move-result v10

    #@3b3
    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@3b6
    move-result-object v54

    #@3b7
    .local v54, "maxMessageSize":Ljava/lang/Short;
    goto/16 :goto_4

    #@3b9
    .line 980
    .end local v54    # "maxMessageSize":Ljava/lang/Short;
    :sswitch_e
    const/16 v30, 0x4

    #@3bb
    .line 981
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@3be
    move-result v10

    #@3bf
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c2
    move-result-object v18

    #@3c3
    .local v18, "T1":Ljava/lang/Integer;
    goto/16 :goto_4

    #@3c5
    .line 984
    .end local v18    # "T1":Ljava/lang/Integer;
    :sswitch_f
    const/16 v30, 0x4

    #@3c7
    .line 985
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@3ca
    move-result v10

    #@3cb
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3ce
    move-result-object v19

    #@3cf
    .local v19, "T2":Ljava/lang/Integer;
    goto/16 :goto_4

    #@3d1
    .line 988
    .end local v19    # "T2":Ljava/lang/Integer;
    :sswitch_10
    move/from16 v30, v59

    #@3d3
    .line 990
    const/4 v10, 0x1

    #@3d4
    move-object/from16 v0, p0

    #@3d6
    move/from16 v1, v59

    #@3d8
    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    #@3db
    move-result-object v70

    #@3dc
    .local v70, "vendorId":Ljava/lang/String;
    goto/16 :goto_4

    #@3de
    .line 993
    .end local v70    # "vendorId":Ljava/lang/String;
    :sswitch_11
    move/from16 v0, v59

    #@3e0
    new-array v0, v0, [B

    #@3e2
    move-object/from16 v37, v0

    #@3e4
    .line 994
    .local v37, "id":[B
    move-object/from16 v0, p0

    #@3e6
    move-object/from16 v1, v37

    #@3e8
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@3eb
    .line 995
    move/from16 v30, v59

    #@3ed
    goto/16 :goto_4

    #@3ef
    .line 998
    .end local v37    # "id":[B
    :sswitch_12
    move/from16 v30, v59

    #@3f1
    .line 1000
    const/4 v10, 0x1

    #@3f2
    move-object/from16 v0, p0

    #@3f4
    move/from16 v1, v59

    #@3f6
    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    :try_end_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1

    #@3f9
    move-result-object v71

    #@3fa
    .local v71, "vendorInfo":Ljava/lang/String;
    goto/16 :goto_4

    #@3fc
    .line 1027
    .end local v30    # "expectedLen":I
    .end local v59    # "optionLen":I
    .end local v60    # "optionType":B
    .end local v71    # "vendorInfo":Ljava/lang/String;
    :cond_10
    packed-switch v24, :pswitch_data_0

    #@3ff
    .line 1063
    :pswitch_0
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    #@401
    sget v11, Landroid/net/metrics/DhcpErrorEvent;->DHCP_UNKNOWN_MSG_TYPE:I

    #@403
    .line 1064
    const-string/jumbo v12, "Unimplemented DHCP type %d"

    #@406
    .line 1063
    const/4 v13, 0x1

    #@407
    new-array v13, v13, [Ljava/lang/Object;

    #@409
    .line 1064
    invoke-static/range {v24 .. v24}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@40c
    move-result-object v14

    #@40d
    const/16 v17, 0x0

    #@40f
    aput-object v14, v13, v17

    #@411
    .line 1063
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    #@414
    throw v10

    #@415
    .line 1029
    :pswitch_1
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    #@417
    sget v11, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_MSG_TYPE:I

    #@419
    .line 1030
    const-string/jumbo v12, "No DHCP message type option"

    #@41c
    .line 1029
    const/4 v13, 0x0

    #@41d
    new-array v13, v13, [Ljava/lang/Object;

    #@41f
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    #@422
    throw v10

    #@423
    .line 1032
    :pswitch_2
    new-instance v2, Landroid/net/dhcp/DhcpDiscoverPacket;

    #@425
    invoke-direct {v2, v3, v4, v9, v5}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZ)V

    #@428
    .line 1067
    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .local v2, "newPacket":Landroid/net/dhcp/DhcpPacket;
    :goto_7
    move-object/from16 v0, v21

    #@42a
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    #@42c
    .line 1068
    move-object/from16 v0, v25

    #@42e
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    #@430
    .line 1069
    move-object/from16 v0, v26

    #@432
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    #@434
    .line 1070
    move-object/from16 v0, v32

    #@436
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    #@438
    .line 1071
    move-object/from16 v0, v34

    #@43a
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    #@43c
    .line 1072
    move-object/from16 v0, v53

    #@43e
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    #@440
    .line 1073
    move-object/from16 v0, v55

    #@442
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    #@444
    .line 1074
    move-object/from16 v0, v56

    #@446
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    #@448
    .line 1075
    move-object/from16 v0, v62

    #@44a
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    #@44c
    .line 1076
    move-object/from16 v0, v31

    #@44e
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    #@450
    .line 1077
    move-object/from16 v0, v63

    #@452
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    #@454
    .line 1078
    move-object/from16 v0, v57

    #@456
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    #@458
    .line 1079
    move-object/from16 v0, v54

    #@45a
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mMaxMessageSize:Ljava/lang/Short;

    #@45c
    .line 1080
    move-object/from16 v0, v18

    #@45e
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mT1:Ljava/lang/Integer;

    #@460
    .line 1081
    move-object/from16 v0, v19

    #@462
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mT2:Ljava/lang/Integer;

    #@464
    .line 1082
    move-object/from16 v0, v70

    #@466
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mVendorId:Ljava/lang/String;

    #@468
    .line 1083
    move-object/from16 v0, v71

    #@46a
    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    #@46c
    .line 1084
    return-object v2

    #@46d
    .line 1036
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    :pswitch_3
    new-instance v2, Landroid/net/dhcp/DhcpOfferPacket;

    #@46f
    invoke-direct/range {v2 .. v9}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    #@472
    .line 1038
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_7

    #@473
    .line 1040
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_4
    new-instance v2, Landroid/net/dhcp/DhcpRequestPacket;

    #@475
    move-object v10, v2

    #@476
    move v11, v3

    #@477
    move v12, v4

    #@478
    move-object v13, v7

    #@479
    move-object v14, v9

    #@47a
    move v15, v5

    #@47b
    invoke-direct/range {v10 .. v15}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    #@47e
    .line 1042
    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_7

    #@47f
    .line 1044
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    :pswitch_5
    new-instance v2, Landroid/net/dhcp/DhcpDeclinePacket;

    #@481
    move-object v10, v2

    #@482
    move v11, v3

    #@483
    move v12, v4

    #@484
    move-object v13, v7

    #@485
    move-object v14, v8

    #@486
    move-object/from16 v17, v9

    #@488
    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpDeclinePacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    #@48b
    .line 1047
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_7

    #@48c
    .line 1049
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_6
    new-instance v2, Landroid/net/dhcp/DhcpAckPacket;

    #@48e
    invoke-direct/range {v2 .. v9}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    #@491
    .line 1051
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_7

    #@492
    .line 1053
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_7
    new-instance v2, Landroid/net/dhcp/DhcpNakPacket;

    #@494
    move-object v10, v2

    #@495
    move v11, v3

    #@496
    move v12, v4

    #@497
    move-object v13, v7

    #@498
    move-object v14, v8

    #@499
    move-object/from16 v17, v9

    #@49b
    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    #@49e
    .line 1056
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_7

    #@49f
    .line 1058
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_8
    new-instance v2, Landroid/net/dhcp/DhcpInformPacket;

    #@4a1
    move-object v10, v2

    #@4a2
    move v11, v3

    #@4a3
    move v12, v4

    #@4a4
    move-object v13, v7

    #@4a5
    move-object v14, v8

    #@4a6
    move-object/from16 v17, v9

    #@4a8
    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpInformPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    #@4ab
    .line 1061
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto/16 :goto_7

    #@4ad
    .line 919
    nop

    #@4ae
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

    #@4fc
    .line 1027
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/dhcp/DhcpPacket$ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1092
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
    .line 1093
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v0, p2}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method private getHostname()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 619
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 620
    :cond_0
    const-string/jumbo v0, "net.hostname"

    #@a
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private getVendorId()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 614
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 615
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v1, "android-dhcp-"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method private static intAbs(S)I
    .locals 1
    .param p0, "v"    # S

    #@0
    .prologue
    .line 473
    const v0, 0xffff

    #@3
    and-int/2addr v0, p0

    #@4
    return v0
.end method

.method private static isPacketServerToServer(SS)Z
    .locals 2
    .param p0, "udpSrcPort"    # S
    .param p1, "udpDstPort"    # S

    #@0
    .prologue
    const/16 v1, 0x43

    #@2
    const/4 v0, 0x0

    #@3
    .line 708
    if-ne p0, v1, :cond_0

    #@5
    if-ne p1, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method private static isPacketToOrFromClient(SS)Z
    .locals 2
    .param p0, "udpSrcPort"    # S
    .param p1, "udpDstPort"    # S

    #@0
    .prologue
    const/16 v1, 0x44

    #@2
    const/4 v0, 0x1

    #@3
    .line 704
    if-eq p0, v1, :cond_0

    #@5
    if-ne p1, v1, :cond_1

    #@7
    :cond_0
    :goto_0
    return v0

    #@8
    :cond_1
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public static macToString([B)Ljava/lang/String;
    .locals 5
    .param p0, "mac"    # [B

    #@0
    .prologue
    .line 639
    const-string/jumbo v2, ""

    #@3
    .line 641
    .local v2, "macAddr":Ljava/lang/String;
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    array-length v3, p0

    #@5
    if-ge v1, v3, :cond_1

    #@7
    .line 642
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
    .line 646
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
    .line 648
    array-length v3, p0

    #@3d
    add-int/lit8 v3, v3, -0x1

    #@3f
    if-eq v1, v3, :cond_0

    #@41
    .line 649
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
    .line 641
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@57
    goto :goto_0

    #@58
    .line 653
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
    .line 686
    new-array v0, p1, [B

    #@3
    .line 687
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@6
    .line 688
    array-length v1, v0

    #@7
    .line 689
    .local v1, "length":I
    if-nez p2, :cond_0

    #@9
    .line 694
    const/4 v1, 0x0

    #@a
    :goto_0
    array-length v2, v0

    #@b
    if-ge v1, v2, :cond_0

    #@d
    .line 695
    aget-byte v2, v0, v1

    #@f
    if-nez v2, :cond_1

    #@11
    .line 700
    :cond_0
    new-instance v2, Ljava/lang/String;

    #@13
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@15
    invoke-direct {v2, v0, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@18
    return-object v2

    #@19
    .line 694
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
    .line 667
    const/4 v2, 0x0

    #@1
    .line 668
    .local v2, "result":Ljava/net/Inet4Address;
    const/4 v3, 0x4

    #@2
    new-array v1, v3, [B

    #@4
    .line 669
    .local v1, "ipAddr":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@7
    .line 672
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
    .line 679
    :goto_0
    return-object v2

    #@e
    .line 673
    :catch_0
    move-exception v0

    #@f
    .line 676
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
    .line 630
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
    .line 631
    invoke-direct {p0}, Landroid/net/dhcp/DhcpPacket;->getVendorId()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    const/16 v1, 0x3c

    #@11
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    #@14
    .line 632
    invoke-direct {p0}, Landroid/net/dhcp/DhcpPacket;->getHostname()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    const/16 v1, 0xc

    #@1a
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    #@1d
    .line 629
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
    .line 356
    invoke-virtual/range {p2 .. p2}, Ljava/net/Inet4Address;->getAddress()[B

    #@3
    move-result-object v2

    #@4
    .line 357
    .local v2, "destIpArray":[B
    invoke-virtual/range {p3 .. p3}, Ljava/net/Inet4Address;->getAddress()[B

    #@7
    move-result-object v7

    #@8
    .line 358
    .local v7, "srcIpArray":[B
    const/4 v5, 0x0

    #@9
    .line 359
    .local v5, "ipHeaderOffset":I
    const/4 v6, 0x0

    #@a
    .line 360
    .local v6, "ipLengthOffset":I
    const/4 v4, 0x0

    #@b
    .line 361
    .local v4, "ipChecksumOffset":I
    const/4 v3, 0x0

    #@c
    .line 362
    .local v3, "endIpHeader":I
    const/4 v9, 0x0

    #@d
    .line 363
    .local v9, "udpHeaderOffset":I
    const/4 v11, 0x0

    #@e
    .line 364
    .local v11, "udpLengthOffset":I
    const/4 v8, 0x0

    #@f
    .line 366
    .local v8, "udpChecksumOffset":I
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@12
    .line 367
    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@14
    move-object/from16 v0, p6

    #@16
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@19
    .line 369
    if-nez p1, :cond_0

    #@1b
    .line 370
    sget-object v13, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    #@1d
    move-object/from16 v0, p6

    #@1f
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@22
    .line 371
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@24
    move-object/from16 v0, p6

    #@26
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@29
    .line 372
    sget v13, Landroid/system/OsConstants;->ETH_P_IP:I

    #@2b
    int-to-short v13, v13

    #@2c
    move-object/from16 v0, p6

    #@2e
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@31
    .line 378
    :cond_0
    const/4 v13, 0x1

    #@32
    move/from16 v0, p1

    #@34
    if-gt v0, v13, :cond_1

    #@36
    .line 379
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@39
    move-result v5

    #@3a
    .line 380
    const/16 v13, 0x45

    #@3c
    move-object/from16 v0, p6

    #@3e
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@41
    .line 381
    const/16 v13, 0x10

    #@43
    move-object/from16 v0, p6

    #@45
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@48
    .line 382
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@4b
    move-result v6

    #@4c
    .line 383
    const/4 v13, 0x0

    #@4d
    move-object/from16 v0, p6

    #@4f
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@52
    .line 384
    const/4 v13, 0x0

    #@53
    move-object/from16 v0, p6

    #@55
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@58
    .line 385
    const/16 v13, 0x4000

    #@5a
    move-object/from16 v0, p6

    #@5c
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@5f
    .line 386
    const/16 v13, 0x40

    #@61
    move-object/from16 v0, p6

    #@63
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@66
    .line 387
    const/16 v13, 0x11

    #@68
    move-object/from16 v0, p6

    #@6a
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@6d
    .line 388
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@70
    move-result v4

    #@71
    .line 389
    const/4 v13, 0x0

    #@72
    move-object/from16 v0, p6

    #@74
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@77
    .line 391
    move-object/from16 v0, p6

    #@79
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@7c
    .line 392
    move-object/from16 v0, p6

    #@7e
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@81
    .line 393
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@84
    move-result v3

    #@85
    .line 396
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@88
    move-result v9

    #@89
    .line 397
    move-object/from16 v0, p6

    #@8b
    move/from16 v1, p5

    #@8d
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@90
    .line 398
    move-object/from16 v0, p6

    #@92
    move/from16 v1, p4

    #@94
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@97
    .line 399
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@9a
    move-result v11

    #@9b
    .line 400
    const/4 v13, 0x0

    #@9c
    move-object/from16 v0, p6

    #@9e
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@a1
    .line 401
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@a4
    move-result v8

    #@a5
    .line 402
    const/4 v13, 0x0

    #@a6
    move-object/from16 v0, p6

    #@a8
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@ab
    .line 406
    :cond_1
    invoke-virtual/range {p6 .. p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@ae
    .line 407
    const/4 v13, 0x1

    #@af
    move-object/from16 v0, p6

    #@b1
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@b4
    .line 408
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
    .line 409
    const/4 v13, 0x0

    #@be
    move-object/from16 v0, p6

    #@c0
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@c3
    .line 410
    iget v13, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    #@c5
    move-object/from16 v0, p6

    #@c7
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@ca
    .line 411
    iget-short v13, p0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    #@cc
    move-object/from16 v0, p6

    #@ce
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@d1
    .line 413
    if-eqz p8, :cond_4

    #@d3
    .line 414
    const/16 v13, -0x8000

    #@d5
    move-object/from16 v0, p6

    #@d7
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@da
    .line 419
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
    .line 420
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
    .line 421
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
    .line 422
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
    .line 423
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@108
    move-object/from16 v0, p6

    #@10a
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@10d
    .line 424
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@110
    move-result v13

    #@111
    .line 425
    iget-object v14, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@113
    array-length v14, v14

    #@114
    rsub-int/lit8 v14, v14, 0x10

    #@116
    .line 424
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
    .line 428
    const v13, 0x63825363

    #@123
    move-object/from16 v0, p6

    #@125
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@128
    .line 429
    move-object/from16 v0, p6

    #@12a
    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpPacket;->finishPacket(Ljava/nio/ByteBuffer;)V

    #@12d
    .line 432
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
    .line 433
    const/4 v13, 0x0

    #@137
    move-object/from16 v0, p6

    #@139
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@13c
    .line 438
    :cond_2
    const/4 v13, 0x1

    #@13d
    move/from16 v0, p1

    #@13f
    if-gt v0, v13, :cond_3

    #@141
    .line 440
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@144
    move-result v13

    #@145
    sub-int/2addr v13, v9

    #@146
    int-to-short v10, v13

    #@147
    .line 441
    .local v10, "udpLen":S
    move-object/from16 v0, p6

    #@149
    invoke-virtual {v0, v11, v10}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    #@14c
    .line 448
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
    .line 449
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
    .line 450
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
    .line 451
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
    .line 454
    add-int/lit8 v12, v12, 0x11

    #@183
    .line 455
    add-int/2addr v12, v10

    #@184
    .line 459
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    #@187
    move-result v13

    #@188
    .line 457
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
    .line 461
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
    .line 464
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
    .line 463
    move-object/from16 v0, p6

    #@1a9
    invoke-virtual {v0, v4, v13}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    #@1ac
    .line 355
    .end local v10    # "udpLen":S
    .end local v12    # "udpSeed":I
    :cond_3
    return-void

    #@1ad
    .line 416
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
    .line 342
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@4
    array-length v1, v1

    #@5
    add-int/lit8 v1, v1, 0x1

    #@7
    new-array v0, v1, [B

    #@9
    .line 343
    .local v0, "clientId":[B
    aput-byte v4, v0, v3

    #@b
    .line 344
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@d
    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@f
    array-length v2, v2

    #@10
    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@13
    .line 345
    return-object v0
.end method

.method public getClientMac()[B
    .locals 1

    #@0
    .prologue
    .line 335
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@2
    return-object v0
.end method

.method public getLeaseTimeMillis()J
    .locals 4

    #@0
    .prologue
    .line 1146
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
    .line 1147
    :cond_0
    const-wide/16 v0, 0x0

    #@f
    return-wide v0

    #@10
    .line 1148
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
    .line 1149
    const-wide/32 v0, 0xea60

    #@25
    return-wide v0

    #@26
    .line 1151
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
    .line 328
    iget v0, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    #@2
    return v0
.end method

.method public toDhcpResults()Landroid/net/DhcpResults;
    .locals 7

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 1100
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    #@4
    .line 1101
    .local v1, "ipAddress":Ljava/net/Inet4Address;
    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    #@6
    invoke-virtual {v1, v4}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 1102
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    #@e
    .line 1103
    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    #@10
    invoke-virtual {v1, v4}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_0

    #@16
    .line 1104
    return-object v6

    #@17
    .line 1109
    :cond_0
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    #@19
    if-eqz v4, :cond_2

    #@1b
    .line 1111
    :try_start_0
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    #@1d
    invoke-static {v4}, Landroid/net/NetworkUtils;->netmaskToPrefixLength(Ljava/net/Inet4Address;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result v2

    #@21
    .line 1120
    .local v2, "prefixLength":I
    :goto_0
    new-instance v3, Landroid/net/DhcpResults;

    #@23
    invoke-direct {v3}, Landroid/net/DhcpResults;-><init>()V

    #@26
    .line 1122
    .local v3, "results":Landroid/net/DhcpResults;
    :try_start_1
    new-instance v4, Landroid/net/LinkAddress;

    #@28
    invoke-direct {v4, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@2b
    iput-object v4, v3, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@2d
    .line 1127
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    #@2f
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@32
    move-result v4

    #@33
    if-lez v4, :cond_1

    #@35
    .line 1128
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    #@37
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v4

    #@3b
    check-cast v4, Ljava/net/InetAddress;

    #@3d
    iput-object v4, v3, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    #@3f
    .line 1131
    :cond_1
    iget-object v4, v3, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    #@41
    iget-object v6, p0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    #@43
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@46
    .line 1132
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    #@48
    iput-object v4, v3, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    #@4a
    .line 1133
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    #@4c
    iput-object v4, v3, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    #@4e
    .line 1134
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    #@50
    iput-object v4, v3, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    #@52
    .line 1135
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    #@54
    if-eqz v4, :cond_3

    #@56
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    #@58
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@5b
    move-result v4

    #@5c
    :goto_1
    iput v4, v3, Landroid/net/DhcpResults;->leaseDuration:I

    #@5e
    .line 1136
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    #@60
    if-eqz v4, :cond_4

    #@62
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    #@64
    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    #@67
    move-result v4

    #@68
    const/16 v6, 0x500

    #@6a
    if-gt v6, v4, :cond_4

    #@6c
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    #@6e
    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    #@71
    move-result v4

    #@72
    const/16 v6, 0x5dc

    #@74
    if-gt v4, v6, :cond_4

    #@76
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    #@78
    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    #@7b
    move-result v4

    #@7c
    :goto_2
    iput v4, v3, Landroid/net/DhcpResults;->mtu:I

    #@7e
    .line 1138
    return-object v3

    #@7f
    .line 1112
    .end local v2    # "prefixLength":I
    .end local v3    # "results":Landroid/net/DhcpResults;
    :catch_0
    move-exception v0

    #@80
    .line 1114
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-object v6

    #@81
    .line 1117
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-static {v1}, Landroid/net/NetworkUtils;->getImplicitNetmask(Ljava/net/Inet4Address;)I

    #@84
    move-result v2

    #@85
    .restart local v2    # "prefixLength":I
    goto :goto_0

    #@86
    .line 1123
    .restart local v3    # "results":Landroid/net/DhcpResults;
    :catch_1
    move-exception v0

    #@87
    .line 1124
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    return-object v6

    #@88
    .line 1135
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    const/4 v4, -0x1

    #@89
    goto :goto_1

    #@8a
    :cond_4
    move v4, v5

    #@8b
    .line 1136
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 657
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    #@2
    invoke-static {v1}, Landroid/net/dhcp/DhcpPacket;->macToString([B)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 659
    .local v0, "macAddr":Ljava/lang/String;
    return-object v0
.end method
