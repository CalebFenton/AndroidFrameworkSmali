.class public Lcom/android/server/wifi/util/FrameParser;
.super Ljava/lang/Object;
.source "FrameParser.java"


# static fields
.field private static final ARP_HWADDR_LEN_LEN:B = 0x1t

.field private static final ARP_HWTYPE_LEN:B = 0x2t

.field private static final ARP_OPCODE_REPLY:B = 0x2t

.field private static final ARP_OPCODE_REQUEST:B = 0x1t

.field private static final ARP_PROTOADDR_LEN_LEN:B = 0x1t

.field private static final ARP_PROTOTYPE_LEN:B = 0x2t

.field private static final BOOTP_BOOT_FILENAME_LEN:S = 0x80s

.field private static final BOOTP_CLIENT_HWADDR_LEN:B = 0x10t

.field private static final BOOTP_ELAPSED_SECONDS_LEN:B = 0x2t

.field private static final BOOTP_FLAGS_LEN:B = 0x2t

.field private static final BOOTP_HOPCOUNT_LEN:B = 0x1t

.field private static final BOOTP_HWADDR_LEN_LEN:B = 0x1t

.field private static final BOOTP_HWTYPE_LEN:B = 0x1t

.field private static final BOOTP_MAGIC_COOKIE_LEN:B = 0x4t

.field private static final BOOTP_OPCODE_LEN:B = 0x1t

.field private static final BOOTP_SERVER_HOSTNAME_LEN:B = 0x40t

.field private static final BOOTP_TRANSACTION_ID_LEN:B = 0x4t

.field private static final BYTES_PER_OCT:B = 0x8t

.field private static final BYTES_PER_QUAD:B = 0x4t

.field private static final DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field private static final DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field private static final DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field private static final DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field private static final DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field private static final DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field private static final DHCP_MESSAGE_TYPE_RELEASE:B = 0x7t

.field private static final DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field private static final DHCP_OPTION_TAG_END:S = 0xffs

.field private static final DHCP_OPTION_TAG_MESSAGE_TYPE:S = 0x35s

.field private static final DHCP_OPTION_TAG_PAD:S = 0x0s

.field private static final EAPOL_KEY_DESCRIPTOR_RSN_KEY:B = 0x2t

.field private static final EAPOL_LENGTH_LEN:B = 0x2t

.field private static final EAPOL_TYPE_KEY:B = 0x3t

.field private static final ETHERNET_DST_MAC_ADDR_LEN:I = 0x6

.field private static final ETHERNET_SRC_MAC_ADDR_LEN:I = 0x6

.field private static final ETHERTYPE_ARP:S = 0x806s

.field private static final ETHERTYPE_EAPOL:S = -0x7772s

.field private static final ETHERTYPE_IP_V4:S = 0x800s

.field private static final ETHERTYPE_IP_V6:S = -0x7923s

.field private static final HTTPS_PORT:I = 0x1bb

.field private static final HTTP_PORTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICMP_TYPE_DEST_UNREACHABLE:B = 0x3t

.field private static final ICMP_TYPE_ECHO_REPLY:B = 0x0t

.field private static final ICMP_TYPE_ECHO_REQUEST:B = 0x8t

.field private static final ICMP_TYPE_REDIRECT:B = 0x5t

.field private static final ICMP_V6_TYPE_ECHO_REPLY:S = 0x81s

.field private static final ICMP_V6_TYPE_ECHO_REQUEST:S = 0x80s

.field private static final ICMP_V6_TYPE_MULTICAST_LISTENER_DISCOVERY:S = 0x8fs

.field private static final ICMP_V6_TYPE_NEIGHBOR_ADVERTISEMENT:S = 0x88s

.field private static final ICMP_V6_TYPE_NEIGHBOR_SOLICITATION:S = 0x87s

.field private static final ICMP_V6_TYPE_ROUTER_ADVERTISEMENT:S = 0x86s

.field private static final ICMP_V6_TYPE_ROUTER_SOLICITATION:S = 0x85s

.field private static final IEEE_80211_ADDR1_LEN:B = 0x6t

.field private static final IEEE_80211_ADDR2_LEN:B = 0x6t

.field private static final IEEE_80211_ADDR3_LEN:B = 0x6t

.field private static final IEEE_80211_AUTH_ALG_FAST_BSS_TRANSITION:S = 0x2s

.field private static final IEEE_80211_AUTH_ALG_OPEN:S = 0x0s

.field private static final IEEE_80211_AUTH_ALG_SHARED_KEY:S = 0x1s

.field private static final IEEE_80211_AUTH_ALG_SIMUL_AUTH_OF_EQUALS:S = 0x3s

.field private static final IEEE_80211_CAPABILITY_INFO_LEN:B = 0x2t

.field private static final IEEE_80211_DURATION_LEN:B = 0x2t

.field private static final IEEE_80211_FRAME_CTRL_FLAG_ORDER:B = -0x80t

.field private static final IEEE_80211_FRAME_CTRL_SUBTYPE_ASSOC_REQ:B = 0x0t

.field private static final IEEE_80211_FRAME_CTRL_SUBTYPE_ASSOC_RESP:B = 0x1t

.field private static final IEEE_80211_FRAME_CTRL_SUBTYPE_AUTH:B = 0xbt

.field private static final IEEE_80211_FRAME_CTRL_SUBTYPE_PROBE_REQ:B = 0x4t

.field private static final IEEE_80211_FRAME_CTRL_SUBTYPE_PROBE_RESP:B = 0x5t

.field private static final IEEE_80211_FRAME_CTRL_TYPE_MGMT:B = 0x0t

.field private static final IEEE_80211_HT_CONTROL_LEN:B = 0x4t

.field private static final IEEE_80211_SEQUENCE_CONTROL_LEN:B = 0x2t

.field private static final IP_PROTO_ICMP:B = 0x1t

.field private static final IP_PROTO_TCP:B = 0x6t

.field private static final IP_PROTO_UDP:B = 0x11t

.field private static final IP_V4_ADDR_LEN:B = 0x4t

.field private static final IP_V4_DSCP_AND_ECN_LEN:B = 0x1t

.field private static final IP_V4_DST_ADDR_LEN:B = 0x4t

.field private static final IP_V4_FLAGS_AND_FRAG_OFFSET_LEN:B = 0x2t

.field private static final IP_V4_HEADER_CHECKSUM_LEN:B = 0x2t

.field private static final IP_V4_ID_LEN:B = 0x2t

.field private static final IP_V4_IHL_BYTE_MASK:B = 0xft

.field private static final IP_V4_SRC_ADDR_LEN:B = 0x4t

.field private static final IP_V4_TOTAL_LEN_LEN:B = 0x2t

.field private static final IP_V4_TTL_LEN:B = 0x1t

.field private static final IP_V4_VERSION_BYTE_MASK:B = -0x10t

.field private static final IP_V6_ADDR_LEN:B = 0x10t

.field private static final IP_V6_HEADER_TYPE_HOP_BY_HOP_OPTION:B = 0x0t

.field private static final IP_V6_HEADER_TYPE_ICMP_V6:B = 0x3at

.field private static final IP_V6_HOP_LIMIT_LEN:B = 0x1t

.field private static final IP_V6_PAYLOAD_LENGTH_LEN:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "FrameParser"

.field private static final TCP_SRC_PORT_LEN:B = 0x2t

.field private static final UDP_CHECKSUM_LEN:B = 0x2t

.field private static final UDP_PORT_BOOTPC:B = 0x44t

.field private static final UDP_PORT_BOOTPS:B = 0x43t

.field private static final UDP_PORT_NTP:B = 0x7bt

.field private static final WPA_KEYLEN_LEN:B = 0x2t

.field private static final WPA_KEY_IDENTIFIER_LEN:B = 0x8t

.field private static final WPA_KEY_INFO_FLAG_INSTALL:S = 0x40s

.field private static final WPA_KEY_INFO_FLAG_MIC:S = 0x100s

.field private static final WPA_KEY_INFO_FLAG_PAIRWISE:S = 0x8s

.field private static final WPA_KEY_IV_LEN:B = 0x10t

.field private static final WPA_KEY_MIC_LEN:B = 0x10t

.field private static final WPA_KEY_NONCE_LEN:B = 0x20t

.field private static final WPA_KEY_RECEIVE_SEQUENCE_COUNTER_LEN:B = 0x8t

.field private static final WPA_REPLAY_COUNTER_LEN:B = 0x8t


# instance fields
.field public mMostSpecificProtocolString:Ljava/lang/String;

.field public mResultString:Ljava/lang/String;

.field public mTypeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 163
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    #@7
    .line 165
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    #@9
    const/16 v1, 0x50

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@12
    .line 166
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    #@14
    const/16 v1, 0xc38

    #@16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v1

    #@1a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1d
    .line 167
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    #@1f
    const/16 v1, 0xc3c

    #@21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v1

    #@25
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@28
    .line 168
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    #@2a
    const/16 v1, 0x1761

    #@2c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v1

    #@30
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@33
    .line 169
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    #@35
    const/16 v1, 0x1f90

    #@37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v1

    #@3b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3e
    .line 170
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    #@40
    const/16 v1, 0x1f98

    #@42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v1

    #@46
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@49
    .line 171
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    #@4b
    const/16 v1, 0x2c6b

    #@4d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v1

    #@51
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@54
    .line 172
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    #@56
    const/16 v1, 0x76c

    #@58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object v1

    #@5c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5f
    .line 173
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    #@61
    const/16 v1, 0xb35

    #@63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@66
    move-result-object v1

    #@67
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6a
    .line 174
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    #@6c
    const/16 v1, 0xa96

    #@6e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@71
    move-result-object v1

    #@72
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@75
    .line 32
    return-void
.end method

.method public constructor <init>(B[B)V
    .locals 5
    .param p1, "frameType"    # B
    .param p2, "frameBytes"    # [B

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    const-string/jumbo v2, "N/A"

    #@6
    iput-object v2, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    #@8
    .line 42
    const-string/jumbo v2, "N/A"

    #@b
    iput-object v2, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@d
    .line 43
    const-string/jumbo v2, "N/A"

    #@10
    iput-object v2, p0, Lcom/android/server/wifi/util/FrameParser;->mResultString:Ljava/lang/String;

    #@12
    .line 54
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@15
    move-result-object v1

    #@16
    .line 55
    .local v1, "frameBuffer":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@18
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@1b
    .line 56
    const/4 v2, 0x1

    #@1c
    if-ne p1, v2, :cond_1

    #@1e
    .line 57
    invoke-direct {p0, v1}, Lcom/android/server/wifi/util/FrameParser;->parseEthernetFrame(Ljava/nio/ByteBuffer;)V

    #@21
    .line 52
    .end local v1    # "frameBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    return-void

    #@22
    .line 58
    .restart local v1    # "frameBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    const/4 v2, 0x2

    #@23
    if-ne p1, v2, :cond_0

    #@25
    .line 59
    invoke-direct {p0, v1}, Lcom/android/server/wifi/util/FrameParser;->parseManagementFrame(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    goto :goto_0

    #@29
    .line 61
    .end local v1    # "frameBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    #@2a
    .line 62
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "FrameParser"

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "Dissection aborted mid-frame: "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    goto :goto_0
.end method

.method private static decodeDhcpMessageType(S)Ljava/lang/String;
    .locals 2
    .param p0, "messageType"    # S

    #@0
    .prologue
    .line 266
    packed-switch p0, :pswitch_data_0

    #@3
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "Unknown type "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 268
    :pswitch_0
    const-string/jumbo v0, "Discover"

    #@1b
    return-object v0

    #@1c
    .line 270
    :pswitch_1
    const-string/jumbo v0, "Offer"

    #@1f
    return-object v0

    #@20
    .line 272
    :pswitch_2
    const-string/jumbo v0, "Request"

    #@23
    return-object v0

    #@24
    .line 274
    :pswitch_3
    const-string/jumbo v0, "Decline"

    #@27
    return-object v0

    #@28
    .line 276
    :pswitch_4
    const-string/jumbo v0, "Ack"

    #@2b
    return-object v0

    #@2c
    .line 278
    :pswitch_5
    const-string/jumbo v0, "Nak"

    #@2f
    return-object v0

    #@30
    .line 280
    :pswitch_6
    const-string/jumbo v0, "Release"

    #@33
    return-object v0

    #@34
    .line 282
    :pswitch_7
    const-string/jumbo v0, "Inform"

    #@37
    return-object v0

    #@38
    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private decodeIeee80211StatusCode(S)Ljava/lang/String;
    .locals 1
    .param p1, "statusCode"    # S

    #@0
    .prologue
    .line 600
    packed-switch p1, :pswitch_data_0

    #@3
    .line 795
    const-string/jumbo v0, "Reserved"

    #@6
    return-object v0

    #@7
    .line 602
    :pswitch_0
    const-string/jumbo v0, "Success"

    #@a
    return-object v0

    #@b
    .line 604
    :pswitch_1
    const-string/jumbo v0, "Unspecified failure"

    #@e
    return-object v0

    #@f
    .line 606
    :pswitch_2
    const-string/jumbo v0, "TDLS wakeup schedule rejected; alternative provided"

    #@12
    return-object v0

    #@13
    .line 608
    :pswitch_3
    const-string/jumbo v0, "TDLS wakeup schedule rejected"

    #@16
    return-object v0

    #@17
    .line 610
    :pswitch_4
    const-string/jumbo v0, "Reserved"

    #@1a
    return-object v0

    #@1b
    .line 612
    :pswitch_5
    const-string/jumbo v0, "Security disabled"

    #@1e
    return-object v0

    #@1f
    .line 614
    :pswitch_6
    const-string/jumbo v0, "Unacceptable lifetime"

    #@22
    return-object v0

    #@23
    .line 616
    :pswitch_7
    const-string/jumbo v0, "Not in same BSS"

    #@26
    return-object v0

    #@27
    .line 619
    :pswitch_8
    const-string/jumbo v0, "Reserved"

    #@2a
    return-object v0

    #@2b
    .line 621
    :pswitch_9
    const-string/jumbo v0, "Capabilities mismatch"

    #@2e
    return-object v0

    #@2f
    .line 623
    :pswitch_a
    const-string/jumbo v0, "Reassociation denied; could not confirm association exists"

    #@32
    return-object v0

    #@33
    .line 625
    :pswitch_b
    const-string/jumbo v0, "Association denied for reasons outside standard"

    #@36
    return-object v0

    #@37
    .line 627
    :pswitch_c
    const-string/jumbo v0, "Unsupported authentication algorithm"

    #@3a
    return-object v0

    #@3b
    .line 629
    :pswitch_d
    const-string/jumbo v0, "Authentication sequence number of of sequence"

    #@3e
    return-object v0

    #@3f
    .line 631
    :pswitch_e
    const-string/jumbo v0, "Authentication challenge failure"

    #@42
    return-object v0

    #@43
    .line 633
    :pswitch_f
    const-string/jumbo v0, "Authentication timeout"

    #@46
    return-object v0

    #@47
    .line 635
    :pswitch_10
    const-string/jumbo v0, "Association denied; too many STAs"

    #@4a
    return-object v0

    #@4b
    .line 637
    :pswitch_11
    const-string/jumbo v0, "Association denied; must support BSSBasicRateSet"

    #@4e
    return-object v0

    #@4f
    .line 639
    :pswitch_12
    const-string/jumbo v0, "Association denied; must support short preamble"

    #@52
    return-object v0

    #@53
    .line 641
    :pswitch_13
    const-string/jumbo v0, "Association denied; must support PBCC"

    #@56
    return-object v0

    #@57
    .line 643
    :pswitch_14
    const-string/jumbo v0, "Association denied; must support channel agility"

    #@5a
    return-object v0

    #@5b
    .line 645
    :pswitch_15
    const-string/jumbo v0, "Association rejected; must support spectrum management"

    #@5e
    return-object v0

    #@5f
    .line 647
    :pswitch_16
    const-string/jumbo v0, "Association rejected; unacceptable power capability"

    #@62
    return-object v0

    #@63
    .line 649
    :pswitch_17
    const-string/jumbo v0, "Association rejected; unacceptable supported channels"

    #@66
    return-object v0

    #@67
    .line 651
    :pswitch_18
    const-string/jumbo v0, "Association denied; must support short slot time"

    #@6a
    return-object v0

    #@6b
    .line 653
    :pswitch_19
    const-string/jumbo v0, "Association denied; must support DSSS-OFDM"

    #@6e
    return-object v0

    #@6f
    .line 655
    :pswitch_1a
    const-string/jumbo v0, "Association denied; must support HT"

    #@72
    return-object v0

    #@73
    .line 657
    :pswitch_1b
    const-string/jumbo v0, "R0 keyholder unreachable (802.11r)"

    #@76
    return-object v0

    #@77
    .line 659
    :pswitch_1c
    const-string/jumbo v0, "Association denied; must support PCO transition time"

    #@7a
    return-object v0

    #@7b
    .line 661
    :pswitch_1d
    const-string/jumbo v0, "Refused temporarily"

    #@7e
    return-object v0

    #@7f
    .line 663
    :pswitch_1e
    const-string/jumbo v0, "Robust management frame policy violation"

    #@82
    return-object v0

    #@83
    .line 665
    :pswitch_1f
    const-string/jumbo v0, "Unspecified QoS failure"

    #@86
    return-object v0

    #@87
    .line 667
    :pswitch_20
    const-string/jumbo v0, "Association denied; insufficient bandwidth for QoS"

    #@8a
    return-object v0

    #@8b
    .line 669
    :pswitch_21
    const-string/jumbo v0, "Association denied; poor channel"

    #@8e
    return-object v0

    #@8f
    .line 671
    :pswitch_22
    const-string/jumbo v0, "Association denied; must support QoS"

    #@92
    return-object v0

    #@93
    .line 673
    :pswitch_23
    const-string/jumbo v0, "Reserved"

    #@96
    return-object v0

    #@97
    .line 675
    :pswitch_24
    const-string/jumbo v0, "Declined"

    #@9a
    return-object v0

    #@9b
    .line 677
    :pswitch_25
    const-string/jumbo v0, "Invalid parameters"

    #@9e
    return-object v0

    #@9f
    .line 679
    :pswitch_26
    const-string/jumbo v0, "TS cannot be honored; changes suggested"

    #@a2
    return-object v0

    #@a3
    .line 681
    :pswitch_27
    const-string/jumbo v0, "Invalid element"

    #@a6
    return-object v0

    #@a7
    .line 683
    :pswitch_28
    const-string/jumbo v0, "Invalid group cipher"

    #@aa
    return-object v0

    #@ab
    .line 685
    :pswitch_29
    const-string/jumbo v0, "Invalid pairwise cipher"

    #@ae
    return-object v0

    #@af
    .line 687
    :pswitch_2a
    const-string/jumbo v0, "Invalid auth/key mgmt proto (AKMP)"

    #@b2
    return-object v0

    #@b3
    .line 689
    :pswitch_2b
    const-string/jumbo v0, "Unsupported RSNE version"

    #@b6
    return-object v0

    #@b7
    .line 691
    :pswitch_2c
    const-string/jumbo v0, "Invalid RSNE capabilities"

    #@ba
    return-object v0

    #@bb
    .line 693
    :pswitch_2d
    const-string/jumbo v0, "Cipher suite rejected by policy"

    #@be
    return-object v0

    #@bf
    .line 695
    :pswitch_2e
    const-string/jumbo v0, "TS cannot be honored now; try again later"

    #@c2
    return-object v0

    #@c3
    .line 697
    :pswitch_2f
    const-string/jumbo v0, "Direct link rejected by policy"

    #@c6
    return-object v0

    #@c7
    .line 699
    :pswitch_30
    const-string/jumbo v0, "Destination STA not in BSS"

    #@ca
    return-object v0

    #@cb
    .line 701
    :pswitch_31
    const-string/jumbo v0, "Destination STA not configured for QoS"

    #@ce
    return-object v0

    #@cf
    .line 703
    :pswitch_32
    const-string/jumbo v0, "Association denied; listen interval too large"

    #@d2
    return-object v0

    #@d3
    .line 705
    :pswitch_33
    const-string/jumbo v0, "Invalid fast transition action frame count"

    #@d6
    return-object v0

    #@d7
    .line 707
    :pswitch_34
    const-string/jumbo v0, "Invalid PMKID"

    #@da
    return-object v0

    #@db
    .line 709
    :pswitch_35
    const-string/jumbo v0, "Invalid MDE"

    #@de
    return-object v0

    #@df
    .line 711
    :pswitch_36
    const-string/jumbo v0, "Invalid FTE"

    #@e2
    return-object v0

    #@e3
    .line 713
    :pswitch_37
    const-string/jumbo v0, "Unsupported TCLAS"

    #@e6
    return-object v0

    #@e7
    .line 715
    :pswitch_38
    const-string/jumbo v0, "Requested TCLAS exceeds resources"

    #@ea
    return-object v0

    #@eb
    .line 717
    :pswitch_39
    const-string/jumbo v0, "TS cannot be honored; try another BSS"

    #@ee
    return-object v0

    #@ef
    .line 719
    :pswitch_3a
    const-string/jumbo v0, "GAS Advertisement not supported"

    #@f2
    return-object v0

    #@f3
    .line 721
    :pswitch_3b
    const-string/jumbo v0, "No outstanding GAS request"

    #@f6
    return-object v0

    #@f7
    .line 723
    :pswitch_3c
    const-string/jumbo v0, "No query response from GAS server"

    #@fa
    return-object v0

    #@fb
    .line 725
    :pswitch_3d
    const-string/jumbo v0, "GAS query timeout"

    #@fe
    return-object v0

    #@ff
    .line 727
    :pswitch_3e
    const-string/jumbo v0, "GAS response too large"

    #@102
    return-object v0

    #@103
    .line 729
    :pswitch_3f
    const-string/jumbo v0, "Home network does not support request"

    #@106
    return-object v0

    #@107
    .line 731
    :pswitch_40
    const-string/jumbo v0, "Advertisement server unreachable"

    #@10a
    return-object v0

    #@10b
    .line 733
    :pswitch_41
    const-string/jumbo v0, "Reserved"

    #@10e
    return-object v0

    #@10f
    .line 735
    :pswitch_42
    const-string/jumbo v0, "Rejected for SSP permissions"

    #@112
    return-object v0

    #@113
    .line 737
    :pswitch_43
    const-string/jumbo v0, "Authentication required"

    #@116
    return-object v0

    #@117
    .line 741
    :pswitch_44
    const-string/jumbo v0, "Reserved"

    #@11a
    return-object v0

    #@11b
    .line 743
    :pswitch_45
    const-string/jumbo v0, "Invalid RSNE contents"

    #@11e
    return-object v0

    #@11f
    .line 745
    :pswitch_46
    const-string/jumbo v0, "U-APSD coexistence unsupported"

    #@122
    return-object v0

    #@123
    .line 747
    :pswitch_47
    const-string/jumbo v0, "Requested U-APSD coex mode unsupported"

    #@126
    return-object v0

    #@127
    .line 749
    :pswitch_48
    const-string/jumbo v0, "Requested parameter unsupported with U-APSD coex"

    #@12a
    return-object v0

    #@12b
    .line 751
    :pswitch_49
    const-string/jumbo v0, "Auth rejected; anti-clogging token required"

    #@12e
    return-object v0

    #@12f
    .line 753
    :pswitch_4a
    const-string/jumbo v0, "Auth rejected; offered group is not supported"

    #@132
    return-object v0

    #@133
    .line 755
    :pswitch_4b
    const-string/jumbo v0, "Cannot find alternative TBTT"

    #@136
    return-object v0

    #@137
    .line 757
    :pswitch_4c
    const-string/jumbo v0, "Transmission failure"

    #@13a
    return-object v0

    #@13b
    .line 759
    :pswitch_4d
    const-string/jumbo v0, "Requested TCLAS not supported"

    #@13e
    return-object v0

    #@13f
    .line 761
    :pswitch_4e
    const-string/jumbo v0, "TCLAS resources exhausted"

    #@142
    return-object v0

    #@143
    .line 763
    :pswitch_4f
    const-string/jumbo v0, "Rejected with suggested BSS transition"

    #@146
    return-object v0

    #@147
    .line 765
    :pswitch_50
    const-string/jumbo v0, "Reserved"

    #@14a
    return-object v0

    #@14b
    .line 774
    :pswitch_51
    const-string/jumbo v0, "<unspecified>"

    #@14e
    return-object v0

    #@14f
    .line 776
    :pswitch_52
    const-string/jumbo v0, "Refused due to external reason"

    #@152
    return-object v0

    #@153
    .line 778
    :pswitch_53
    const-string/jumbo v0, "Refused; AP out of memory"

    #@156
    return-object v0

    #@157
    .line 780
    :pswitch_54
    const-string/jumbo v0, "Refused; emergency services not supported"

    #@15a
    return-object v0

    #@15b
    .line 782
    :pswitch_55
    const-string/jumbo v0, "GAS query response outstanding"

    #@15e
    return-object v0

    #@15f
    .line 787
    :pswitch_56
    const-string/jumbo v0, "Reserved"

    #@162
    return-object v0

    #@163
    .line 789
    :pswitch_57
    const-string/jumbo v0, "Failed; reservation conflict"

    #@166
    return-object v0

    #@167
    .line 791
    :pswitch_58
    const-string/jumbo v0, "Failed; exceeded MAF limit"

    #@16a
    return-object v0

    #@16b
    .line 793
    :pswitch_59
    const-string/jumbo v0, "Failed; exceeded MCCA track limit"

    #@16e
    return-object v0

    #@16f
    .line 600
    nop

    #@170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
    .end packed-switch
.end method

.method private static getUnsignedByte(Ljava/nio/ByteBuffer;)S
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@3
    move-result v0

    #@4
    and-int/lit16 v0, v0, 0xff

    #@6
    int-to-short v0, v0

    #@7
    return v0
.end method

.method private static getUnsignedShort(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@3
    move-result v0

    #@4
    const v1, 0xffff

    #@7
    and-int/2addr v0, v1

    #@8
    return v0
.end method

.method private parseArpPacket(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 323
    const-string/jumbo v1, "ARP"

    #@3
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    #@5
    .line 324
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@8
    move-result v1

    #@9
    add-int/lit8 v1, v1, 0x2

    #@b
    add-int/lit8 v1, v1, 0x2

    #@d
    add-int/lit8 v1, v1, 0x1

    #@f
    add-int/lit8 v1, v1, 0x1

    #@11
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@14
    .line 326
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    #@17
    move-result v0

    #@18
    .line 327
    .local v0, "opCode":I
    packed-switch v0, :pswitch_data_0

    #@1b
    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, "Operation "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@31
    .line 322
    :goto_0
    return-void

    #@32
    .line 329
    :pswitch_0
    const-string/jumbo v1, "Request"

    #@35
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@37
    goto :goto_0

    #@38
    .line 332
    :pswitch_1
    const-string/jumbo v1, "Reply"

    #@3b
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@3d
    goto :goto_0

    #@3e
    .line 327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseAssociationResponse(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 557
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@3
    move-result v1

    #@4
    add-int/lit8 v1, v1, 0x2

    #@6
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@9
    .line 558
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@c
    move-result v0

    #@d
    .line 560
    .local v0, "resultCode":S
    const-string/jumbo v1, "%d: %s"

    #@10
    .line 559
    const/4 v2, 0x2

    #@11
    new-array v2, v2, [Ljava/lang/Object;

    #@13
    .line 560
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@16
    move-result-object v3

    #@17
    const/4 v4, 0x0

    #@18
    aput-object v3, v2, v4

    #@1a
    invoke-direct {p0, v0}, Lcom/android/server/wifi/util/FrameParser;->decodeIeee80211StatusCode(S)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    const/4 v4, 0x1

    #@1f
    aput-object v3, v2, v4

    #@21
    .line 559
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mResultString:Ljava/lang/String;

    #@27
    .line 556
    return-void
.end method

.method private parseAuthenticationFrame(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    .line 569
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@4
    move-result v0

    #@5
    .line 570
    .local v0, "algorithm":S
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@8
    move-result v3

    #@9
    .line 571
    .local v3, "sequenceNum":S
    const/4 v1, 0x0

    #@a
    .line 572
    .local v1, "hasResultCode":Z
    packed-switch v0, :pswitch_data_0

    #@d
    .line 591
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    #@f
    .line 592
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@12
    move-result v2

    #@13
    .line 594
    .local v2, "resultCode":S
    const-string/jumbo v4, "%d: %s"

    #@16
    .line 593
    new-array v5, v5, [Ljava/lang/Object;

    #@18
    .line 594
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@1b
    move-result-object v6

    #@1c
    const/4 v7, 0x0

    #@1d
    aput-object v6, v5, v7

    #@1f
    invoke-direct {p0, v2}, Lcom/android/server/wifi/util/FrameParser;->decodeIeee80211StatusCode(S)Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    const/4 v7, 0x1

    #@24
    aput-object v6, v5, v7

    #@26
    .line 593
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    iput-object v4, p0, Lcom/android/server/wifi/util/FrameParser;->mResultString:Ljava/lang/String;

    #@2c
    .line 568
    .end local v2    # "resultCode":S
    :cond_1
    return-void

    #@2d
    .line 575
    :pswitch_0
    if-ne v3, v5, :cond_0

    #@2f
    .line 576
    const/4 v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 580
    :pswitch_1
    if-eq v3, v5, :cond_2

    #@33
    const/4 v4, 0x4

    #@34
    if-ne v3, v4, :cond_0

    #@36
    .line 581
    :cond_2
    const/4 v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 585
    :pswitch_2
    const/4 v1, 0x1

    #@39
    .line 586
    goto :goto_0

    #@3a
    .line 572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseDhcpPacket(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 228
    const-string/jumbo v2, "DHCP"

    #@3
    iput-object v2, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    #@5
    .line 229
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@8
    move-result v2

    #@9
    add-int/lit8 v2, v2, 0x1

    #@b
    add-int/lit8 v2, v2, 0x1

    #@d
    add-int/lit8 v2, v2, 0x1

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    add-int/lit8 v2, v2, 0x4

    #@13
    add-int/lit8 v2, v2, 0x2

    #@15
    add-int/lit8 v2, v2, 0x2

    #@17
    add-int/lit8 v2, v2, 0x10

    #@19
    add-int/lit8 v2, v2, 0x10

    #@1b
    add-int/lit8 v2, v2, 0x40

    #@1d
    add-int/lit16 v2, v2, 0x80

    #@1f
    add-int/lit8 v2, v2, 0x4

    #@21
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@24
    .line 233
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@27
    move-result v2

    #@28
    if-lez v2, :cond_1

    #@2a
    .line 234
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    #@2d
    move-result v1

    #@2e
    .line 235
    .local v1, "dhcpOptionTag":S
    if-eqz v1, :cond_0

    #@30
    .line 238
    const/16 v2, 0xff

    #@32
    if-ne v1, v2, :cond_2

    #@34
    .line 227
    .end local v1    # "dhcpOptionTag":S
    :cond_1
    return-void

    #@35
    .line 241
    .restart local v1    # "dhcpOptionTag":S
    :cond_2
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    #@38
    move-result v0

    #@39
    .line 242
    .local v0, "dhcpOptionLen":S
    packed-switch v1, :pswitch_data_0

    #@3c
    .line 251
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@3f
    move-result v2

    #@40
    add-int/2addr v2, v0

    #@41
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@44
    goto :goto_0

    #@45
    .line 244
    :pswitch_0
    const/4 v2, 0x1

    #@46
    if-eq v0, v2, :cond_3

    #@48
    .line 245
    const-string/jumbo v2, "FrameParser"

    #@4b
    new-instance v3, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v4, "DHCP option len: "

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    const-string/jumbo v4, " (expected |1|)"

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 246
    return-void

    #@6a
    .line 248
    :cond_3
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    #@6d
    move-result v2

    #@6e
    invoke-static {v2}, Lcom/android/server/wifi/util/FrameParser;->decodeDhcpMessageType(S)Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    iput-object v2, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@74
    .line 249
    return-void

    #@75
    .line 242
    nop

    #@76
    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
    .end packed-switch
.end method

.method private parseEapolPacket(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    .line 430
    const-string/jumbo v5, "EAPOL"

    #@4
    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    #@6
    .line 431
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    #@9
    move-result v2

    #@a
    .line 432
    .local v2, "eapolVersion":S
    const/4 v5, 0x1

    #@b
    if-lt v2, v5, :cond_0

    #@d
    if-le v2, v6, :cond_1

    #@f
    .line 433
    :cond_0
    const-string/jumbo v5, "FrameParser"

    #@12
    new-instance v6, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v7, "Unrecognized EAPOL version "

    #@1a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v6

    #@26
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 434
    return-void

    #@2a
    .line 437
    :cond_1
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    #@2d
    move-result v1

    #@2e
    .line 438
    .local v1, "eapolType":S
    const/4 v5, 0x3

    #@2f
    if-eq v1, v5, :cond_2

    #@31
    .line 439
    const-string/jumbo v5, "FrameParser"

    #@34
    new-instance v6, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v7, "Unrecognized EAPOL type "

    #@3c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 440
    return-void

    #@4c
    .line 443
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@4f
    move-result v5

    #@50
    add-int/lit8 v5, v5, 0x2

    #@52
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@55
    .line 444
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    #@58
    move-result v0

    #@59
    .line 445
    .local v0, "eapolKeyDescriptorType":S
    if-eq v0, v6, :cond_3

    #@5b
    .line 446
    const-string/jumbo v5, "FrameParser"

    #@5e
    new-instance v6, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v7, "Unrecognized key descriptor "

    #@66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 447
    return-void

    #@76
    .line 450
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@79
    move-result v4

    #@7a
    .line 451
    .local v4, "wpaKeyInfo":S
    and-int/lit8 v5, v4, 0x8

    #@7c
    if-nez v5, :cond_4

    #@7e
    .line 452
    const-string/jumbo v5, "Group Key"

    #@81
    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@83
    .line 458
    :goto_0
    and-int/lit16 v5, v4, 0x100

    #@85
    if-nez v5, :cond_5

    #@87
    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    iget-object v6, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@8e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v5

    #@92
    const-string/jumbo v6, " message 1/4"

    #@95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v5

    #@99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v5

    #@9d
    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@9f
    .line 460
    return-void

    #@a0
    .line 454
    :cond_4
    const-string/jumbo v5, "Pairwise Key"

    #@a3
    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@a5
    goto :goto_0

    #@a6
    .line 463
    :cond_5
    and-int/lit8 v5, v4, 0x40

    #@a8
    if-eqz v5, :cond_6

    #@aa
    .line 464
    new-instance v5, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    iget-object v6, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@b1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v5

    #@b5
    const-string/jumbo v6, " message 3/4"

    #@b8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v5

    #@bc
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v5

    #@c0
    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@c2
    .line 465
    return-void

    #@c3
    .line 468
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@c6
    move-result v5

    #@c7
    add-int/lit8 v5, v5, 0x2

    #@c9
    add-int/lit8 v5, v5, 0x8

    #@cb
    add-int/lit8 v5, v5, 0x20

    #@cd
    add-int/lit8 v5, v5, 0x10

    #@cf
    add-int/lit8 v5, v5, 0x8

    #@d1
    add-int/lit8 v5, v5, 0x8

    #@d3
    add-int/lit8 v5, v5, 0x10

    #@d5
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@d8
    .line 471
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    #@db
    move-result v3

    #@dc
    .line 472
    .local v3, "wpaKeyDataLen":I
    if-lez v3, :cond_7

    #@de
    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    iget-object v6, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@e5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v5

    #@e9
    const-string/jumbo v6, " message 2/4"

    #@ec
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v5

    #@f0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v5

    #@f4
    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@f6
    .line 429
    :goto_1
    return-void

    #@f7
    .line 475
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    iget-object v6, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@fe
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v5

    #@102
    const-string/jumbo v6, " message 4/4"

    #@105
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v5

    #@109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10c
    move-result-object v5

    #@10d
    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@10f
    goto :goto_1
.end method

.method private parseEthernetFrame(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 89
    const-string/jumbo v1, "Ethernet"

    #@3
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    #@5
    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@8
    move-result v1

    #@9
    add-int/lit8 v1, v1, 0x6

    #@b
    add-int/lit8 v1, v1, 0x6

    #@d
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@10
    .line 91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@13
    move-result v0

    #@14
    .line 92
    .local v0, "etherType":S
    sparse-switch v0, :sswitch_data_0

    #@17
    .line 106
    return-void

    #@18
    .line 94
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseIpv4Packet(Ljava/nio/ByteBuffer;)V

    #@1b
    .line 95
    return-void

    #@1c
    .line 97
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseArpPacket(Ljava/nio/ByteBuffer;)V

    #@1f
    .line 98
    return-void

    #@20
    .line 100
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseIpv6Packet(Ljava/nio/ByteBuffer;)V

    #@23
    .line 101
    return-void

    #@24
    .line 103
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseEapolPacket(Ljava/nio/ByteBuffer;)V

    #@27
    .line 104
    return-void

    #@28
    .line 92
    :sswitch_data_0
    .sparse-switch
        -0x7923 -> :sswitch_2
        -0x7772 -> :sswitch_3
        0x800 -> :sswitch_0
        0x806 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseIcmpPacket(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 294
    const-string/jumbo v1, "ICMP"

    #@3
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    #@5
    .line 295
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    #@8
    move-result v0

    #@9
    .line 296
    .local v0, "messageType":S
    packed-switch v0, :pswitch_data_0

    #@c
    .line 310
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Type "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@22
    .line 311
    return-void

    #@23
    .line 298
    :pswitch_1
    const-string/jumbo v1, "Echo Reply"

    #@26
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@28
    .line 299
    return-void

    #@29
    .line 301
    :pswitch_2
    const-string/jumbo v1, "Destination Unreachable"

    #@2c
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@2e
    .line 302
    return-void

    #@2f
    .line 304
    :pswitch_3
    const-string/jumbo v1, "Redirect"

    #@32
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@34
    .line 305
    return-void

    #@35
    .line 307
    :pswitch_4
    const-string/jumbo v1, "Echo Request"

    #@38
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@3a
    .line 308
    return-void

    #@3b
    .line 296
    nop

    #@3c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private parseIcmpV6Packet(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 385
    const-string/jumbo v1, "ICMPv6"

    #@3
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    #@5
    .line 386
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    #@8
    move-result v0

    #@9
    .line 387
    .local v0, "icmpV6Type":S
    packed-switch v0, :pswitch_data_0

    #@c
    .line 410
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Type "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@22
    .line 411
    return-void

    #@23
    .line 389
    :pswitch_1
    const-string/jumbo v1, "Echo Request"

    #@26
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@28
    .line 390
    return-void

    #@29
    .line 392
    :pswitch_2
    const-string/jumbo v1, "Echo Reply"

    #@2c
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@2e
    .line 393
    return-void

    #@2f
    .line 395
    :pswitch_3
    const-string/jumbo v1, "Router Solicitation"

    #@32
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@34
    .line 396
    return-void

    #@35
    .line 398
    :pswitch_4
    const-string/jumbo v1, "Router Advertisement"

    #@38
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@3a
    .line 399
    return-void

    #@3b
    .line 401
    :pswitch_5
    const-string/jumbo v1, "Neighbor Solicitation"

    #@3e
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@40
    .line 402
    return-void

    #@41
    .line 404
    :pswitch_6
    const-string/jumbo v1, "Neighbor Advertisement"

    #@44
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@46
    .line 405
    return-void

    #@47
    .line 407
    :pswitch_7
    const-string/jumbo v1, "MLDv2 report"

    #@4a
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@4c
    .line 408
    return-void

    #@4d
    .line 387
    nop

    #@4e
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private static parseIeee80211FrameCtrlSubtype(B)B
    .locals 1
    .param p0, "b"    # B

    #@0
    .prologue
    .line 500
    and-int/lit16 v0, p0, 0xf0

    #@2
    shr-int/lit8 v0, v0, 0x4

    #@4
    int-to-byte v0, v0

    #@5
    return v0
.end method

.method private static parseIeee80211FrameCtrlType(B)B
    .locals 1
    .param p0, "b"    # B

    #@0
    .prologue
    .line 497
    and-int/lit8 v0, p0, 0xc

    #@2
    shr-int/lit8 v0, v0, 0x2

    #@4
    int-to-byte v0, v0

    #@5
    return v0
.end method

.method private static parseIeee80211FrameCtrlVersion(B)B
    .locals 1
    .param p0, "b"    # B

    #@0
    .prologue
    .line 494
    and-int/lit8 v0, p0, 0x3

    #@2
    int-to-byte v0, v0

    #@3
    return v0
.end method

.method private parseIpv4Packet(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 127
    const-string/jumbo v4, "IPv4"

    #@3
    iput-object v4, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    #@5
    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    #@8
    .line 129
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@b
    move-result v3

    #@c
    .line 130
    .local v3, "versionAndHeaderLen":B
    and-int/lit8 v4, v3, -0x10

    #@e
    shr-int/lit8 v2, v4, 0x4

    #@10
    .line 131
    .local v2, "version":I
    const/4 v4, 0x4

    #@11
    if-eq v2, v4, :cond_0

    #@13
    .line 132
    const-string/jumbo v4, "FrameParser"

    #@16
    new-instance v5, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v6, "IPv4 header: Unrecognized protocol version "

    #@1e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 133
    return-void

    #@2e
    .line 136
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@31
    move-result v4

    #@32
    add-int/lit8 v4, v4, 0x1

    #@34
    add-int/lit8 v4, v4, 0x2

    #@36
    add-int/lit8 v4, v4, 0x2

    #@38
    add-int/lit8 v4, v4, 0x2

    #@3a
    add-int/lit8 v4, v4, 0x1

    #@3c
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@3f
    .line 138
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    #@42
    move-result v1

    #@43
    .line 139
    .local v1, "protocolNumber":S
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@46
    move-result v4

    #@47
    add-int/lit8 v4, v4, 0x2

    #@49
    add-int/lit8 v4, v4, 0x4

    #@4b
    add-int/lit8 v4, v4, 0x4

    #@4d
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@50
    .line 142
    and-int/lit8 v4, v3, 0xf

    #@52
    mul-int/lit8 v0, v4, 0x4

    #@54
    .line 143
    .local v0, "headerLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    #@57
    .line 144
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@5a
    move-result v4

    #@5b
    add-int/2addr v4, v0

    #@5c
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@5f
    .line 146
    sparse-switch v1, :sswitch_data_0

    #@62
    .line 126
    :goto_0
    return-void

    #@63
    .line 148
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseIcmpPacket(Ljava/nio/ByteBuffer;)V

    #@66
    goto :goto_0

    #@67
    .line 151
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseTcpPacket(Ljava/nio/ByteBuffer;)V

    #@6a
    goto :goto_0

    #@6b
    .line 154
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseUdpPacket(Ljava/nio/ByteBuffer;)V

    #@6e
    goto :goto_0

    #@6f
    .line 146
    nop

    #@70
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method private parseIpv6Packet(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 347
    const-string/jumbo v4, "IPv6"

    #@3
    iput-object v4, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    #@5
    .line 348
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@8
    move-result v3

    #@9
    .line 349
    .local v3, "versionClassAndLabel":I
    const/high16 v4, -0x10000000

    #@b
    and-int/2addr v4, v3

    #@c
    shr-int/lit8 v2, v4, 0x1c

    #@e
    .line 350
    .local v2, "version":I
    const/4 v4, 0x6

    #@f
    if-eq v2, v4, :cond_0

    #@11
    .line 351
    const-string/jumbo v4, "FrameParser"

    #@14
    new-instance v5, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v6, "IPv6 header: invalid IP version "

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 352
    return-void

    #@2c
    .line 354
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@2f
    move-result v4

    #@30
    add-int/lit8 v4, v4, 0x2

    #@32
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@35
    .line 356
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    #@38
    move-result v0

    #@39
    .line 357
    .local v0, "nextHeaderType":S
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@3c
    move-result v4

    #@3d
    add-int/lit8 v4, v4, 0x1

    #@3f
    add-int/lit8 v4, v4, 0x20

    #@41
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@44
    .line 358
    :goto_0
    if-nez v0, :cond_1

    #@46
    .line 360
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    #@49
    .line 361
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    #@4c
    move-result v0

    #@4d
    .line 362
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    #@50
    move-result v4

    #@51
    add-int/lit8 v4, v4, 0x1

    #@53
    mul-int/lit8 v1, v4, 0x8

    #@55
    .line 363
    .local v1, "thisHeaderLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    #@58
    .line 364
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@5b
    move-result v4

    #@5c
    add-int/2addr v4, v1

    #@5d
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@60
    goto :goto_0

    #@61
    .line 366
    .end local v1    # "thisHeaderLen":I
    :cond_1
    packed-switch v0, :pswitch_data_0

    #@64
    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v5, "Option/Protocol "

    #@6c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v4

    #@78
    iput-object v4, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@7a
    .line 372
    return-void

    #@7b
    .line 368
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseIcmpV6Packet(Ljava/nio/ByteBuffer;)V

    #@7e
    .line 369
    return-void

    #@7f
    .line 366
    nop

    #@80
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method private parseManagementFrame(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 503
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@2
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@5
    .line 505
    const-string/jumbo v5, "802.11 Mgmt"

    #@8
    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    #@a
    .line 506
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@d
    move-result v1

    #@e
    .line 507
    .local v1, "frameControlVersionTypeSubtype":B
    invoke-static {v1}, Lcom/android/server/wifi/util/FrameParser;->parseIeee80211FrameCtrlVersion(B)B

    #@11
    move-result v4

    #@12
    .line 508
    .local v4, "ieee80211Version":B
    if-eqz v4, :cond_0

    #@14
    .line 509
    const-string/jumbo v5, "FrameParser"

    #@17
    new-instance v6, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v7, "Unrecognized 802.11 version "

    #@1f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v6

    #@2b
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 510
    return-void

    #@2f
    .line 513
    :cond_0
    invoke-static {v1}, Lcom/android/server/wifi/util/FrameParser;->parseIeee80211FrameCtrlType(B)B

    #@32
    move-result v3

    #@33
    .line 514
    .local v3, "ieee80211FrameType":B
    if-eqz v3, :cond_1

    #@35
    .line 515
    const-string/jumbo v5, "FrameParser"

    #@38
    new-instance v6, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v7, "Unexpected frame type "

    #@40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 516
    return-void

    #@50
    .line 519
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@53
    move-result v0

    #@54
    .line 521
    .local v0, "frameControlFlags":B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@57
    move-result v5

    #@58
    add-int/lit8 v5, v5, 0x2

    #@5a
    add-int/lit8 v5, v5, 0x6

    #@5c
    add-int/lit8 v5, v5, 0x6

    #@5e
    add-int/lit8 v5, v5, 0x6

    #@60
    add-int/lit8 v5, v5, 0x2

    #@62
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@65
    .line 524
    and-int/lit8 v5, v0, -0x80

    #@67
    if-eqz v5, :cond_2

    #@69
    .line 526
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@6c
    move-result v5

    #@6d
    add-int/lit8 v5, v5, 0x4

    #@6f
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@72
    .line 529
    :cond_2
    invoke-static {v1}, Lcom/android/server/wifi/util/FrameParser;->parseIeee80211FrameCtrlSubtype(B)B

    #@75
    move-result v2

    #@76
    .line 530
    .local v2, "ieee80211FrameSubtype":B
    sparse-switch v2, :sswitch_data_0

    #@79
    .line 549
    new-instance v5, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v6, "Unexpected subtype "

    #@81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88
    move-result-object v5

    #@89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v5

    #@8d
    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@8f
    .line 550
    return-void

    #@90
    .line 532
    :sswitch_0
    const-string/jumbo v5, "Association Request"

    #@93
    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@95
    .line 533
    return-void

    #@96
    .line 535
    :sswitch_1
    const-string/jumbo v5, "Association Response"

    #@99
    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@9b
    .line 536
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseAssociationResponse(Ljava/nio/ByteBuffer;)V

    #@9e
    .line 537
    return-void

    #@9f
    .line 539
    :sswitch_2
    const-string/jumbo v5, "Probe Request"

    #@a2
    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@a4
    .line 540
    return-void

    #@a5
    .line 542
    :sswitch_3
    const-string/jumbo v5, "Probe Response"

    #@a8
    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@aa
    .line 543
    return-void

    #@ab
    .line 545
    :sswitch_4
    const-string/jumbo v5, "Authentication"

    #@ae
    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@b0
    .line 546
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseAuthenticationFrame(Ljava/nio/ByteBuffer;)V

    #@b3
    .line 547
    return-void

    #@b4
    .line 530
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0xb -> :sswitch_4
    .end sparse-switch
.end method

.method private parseTcpPacket(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 178
    const-string/jumbo v1, "TCP"

    #@3
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    #@5
    .line 179
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@8
    move-result v1

    #@9
    add-int/lit8 v1, v1, 0x2

    #@b
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@e
    .line 180
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    #@11
    move-result v0

    #@12
    .line 182
    .local v0, "dstPort":I
    const/16 v1, 0x1bb

    #@14
    if-ne v0, v1, :cond_1

    #@16
    .line 183
    const-string/jumbo v1, "HTTPS"

    #@19
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@1b
    .line 177
    :cond_0
    :goto_0
    return-void

    #@1c
    .line 184
    :cond_1
    sget-object v1, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    #@1e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v2

    #@22
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_0

    #@28
    .line 185
    const-string/jumbo v1, "HTTP"

    #@2b
    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@2d
    goto :goto_0
.end method

.method private parseUdpPacket(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/16 v6, 0x7b

    #@2
    const/16 v5, 0x44

    #@4
    const/16 v4, 0x43

    #@6
    .line 195
    const-string/jumbo v3, "UDP"

    #@9
    iput-object v3, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    #@b
    .line 196
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    #@e
    move-result v2

    #@f
    .line 197
    .local v2, "srcPort":I
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    #@12
    move-result v0

    #@13
    .line 198
    .local v0, "dstPort":I
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    #@16
    move-result v1

    #@17
    .line 200
    .local v1, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@1a
    move-result v3

    #@1b
    add-int/lit8 v3, v3, 0x2

    #@1d
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@20
    .line 201
    if-ne v2, v5, :cond_1

    #@22
    if-ne v0, v4, :cond_1

    #@24
    .line 203
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseDhcpPacket(Ljava/nio/ByteBuffer;)V

    #@27
    .line 204
    return-void

    #@28
    .line 202
    :cond_1
    if-ne v2, v4, :cond_2

    #@2a
    if-eq v0, v5, :cond_0

    #@2c
    .line 206
    :cond_2
    if-eq v2, v6, :cond_3

    #@2e
    if-ne v0, v6, :cond_4

    #@30
    .line 207
    :cond_3
    const-string/jumbo v3, "NTP"

    #@33
    iput-object v3, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    #@35
    .line 208
    return-void

    #@36
    .line 194
    :cond_4
    return-void
.end method
