.class public Landroid/net/apf/ApfFilter;
.super Ljava/lang/Object;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/apf/ApfFilter$ProcessRaResult;,
        Landroid/net/apf/ApfFilter$Ra;,
        Landroid/net/apf/ApfFilter$ReceiveThread;
    }
.end annotation


# static fields
.field private static final ARP_HEADER_OFFSET:I = 0xe

.field private static final ARP_IPV4_HEADER:[B

.field private static final ARP_OPCODE_OFFSET:I = 0x14

.field private static final ARP_OPCODE_REPLY:S = 0x2s

.field private static final ARP_OPCODE_REQUEST:S = 0x1s

.field private static final ARP_TARGET_IP_ADDRESS_OFFSET:I = 0x26

.field private static final DBG:Z = true

.field private static final DHCP_CLIENT_MAC_OFFSET:I = 0x32

.field private static final DHCP_CLIENT_PORT:I = 0x44

.field private static final ETH_BROADCAST_MAC_ADDRESS:[B

.field private static final ETH_DEST_ADDR_OFFSET:I = 0x0

.field private static final ETH_ETHERTYPE_OFFSET:I = 0xc

.field private static final ETH_HEADER_LEN:I = 0xe

.field private static final FRACTION_OF_LIFETIME_TO_FILTER:I = 0x6

.field private static final ICMP6_NEIGHBOR_ANNOUNCEMENT:I = 0x88

.field private static final ICMP6_ROUTER_ADVERTISEMENT:I = 0x86

.field private static final ICMP6_TYPE_OFFSET:I = 0x36

.field private static final IPV4_ANY_HOST_ADDRESS:I = 0x0

.field private static final IPV4_BROADCAST_ADDRESS:I = -0x1

.field private static final IPV4_DEST_ADDR_OFFSET:I = 0x1e

.field private static final IPV4_FRAGMENT_OFFSET_MASK:I = 0x1fff

.field private static final IPV4_FRAGMENT_OFFSET_OFFSET:I = 0x14

.field private static final IPV4_PROTOCOL_OFFSET:I = 0x17

.field private static final IPV6_ALL_NODES_ADDRESS:[B

.field private static final IPV6_DEST_ADDR_OFFSET:I = 0x26

.field private static final IPV6_HEADER_LEN:I = 0x28

.field private static final IPV6_NEXT_HEADER_OFFSET:I = 0x14

.field private static final IPV6_SRC_ADDR_OFFSET:I = 0x16

.field private static final MAX_PROGRAM_LIFETIME_WORTH_REFRESHING:J = 0x1eL

.field private static final MAX_RAS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ApfFilter"

.field private static final UDP_DESTINATION_PORT_OFFSET:I = 0x10

.field private static final UDP_HEADER_LEN:I = 0x8

.field private static final VDBG:Z


# instance fields
.field private final mApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field mHardwareAddress:[B

.field private mIPv4Address:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mIPv4PrefixLength:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mIpManagerCallback:Landroid/net/ip/IpManager$Callback;

.field private mLastInstalledProgram:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastInstalledProgramMinLifetime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastTimeInstalledProgram:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private mMulticastFilter:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mNetworkInterface:Ljava/net/NetworkInterface;

.field private mNumProgramUpdates:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mRas:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/apf/ApfFilter$Ra;",
            ">;"
        }
    .end annotation
.end field

.field mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

.field private mUniqueCounter:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfCapabilities;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/net/apf/ApfFilter;)Landroid/net/metrics/IpConnectivityLog;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/net/apf/ApfFilter;[BI)Landroid/net/apf/ApfFilter$ProcessRaResult;
    .locals 1
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/apf/ApfFilter;->processRa([BI)Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(S)I
    .locals 1
    .param p0, "s"    # S

    #@0
    .prologue
    invoke-static {p0}, Landroid/net/apf/ApfFilter;->uint16(S)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(B)I
    .locals 1
    .param p0, "b"    # B

    #@0
    .prologue
    invoke-static {p0}, Landroid/net/apf/ApfFilter;->uint8(B)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3()J
    .locals 2

    #@0
    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap4(Ljava/nio/ByteBuffer;I)J
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "position"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/net/apf/ApfFilter;->getUint16(Ljava/nio/ByteBuffer;I)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap5(Ljava/nio/ByteBuffer;I)J
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "position"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/net/apf/ApfFilter;->getUint32(Ljava/nio/ByteBuffer;I)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap6(Landroid/net/apf/ApfFilter;)J
    .locals 2

    #@0
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->getUniqueNumberLocked()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap7(I)J
    .locals 2
    .param p0, "i"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/net/apf/ApfFilter;->uint32(I)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap8(Landroid/net/apf/ApfFilter;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x6

    #@1
    .line 177
    new-array v0, v1, [B

    #@3
    fill-array-data v0, :array_0

    #@6
    .line 176
    sput-object v0, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    #@8
    .line 194
    const/16 v0, 0x10

    #@a
    new-array v0, v0, [B

    #@c
    fill-array-data v0, :array_1

    #@f
    .line 193
    sput-object v0, Landroid/net/apf/ApfFilter;->IPV6_ALL_NODES_ADDRESS:[B

    #@11
    .line 212
    new-array v0, v1, [B

    #@13
    fill-array-data v0, :array_2

    #@16
    sput-object v0, Landroid/net/apf/ApfFilter;->ARP_IPV4_HEADER:[B

    #@18
    .line 79
    return-void

    #@19
    .line 177
    nop

    #@1a
    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    #@21
    .line 194
    nop

    #@22
    :array_1
    .array-data 1
        -0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    #@2e
    .line 212
    :array_2
    .array-data 1
        0x0t
        0x1t
        0x8t
        0x0t
        0x6t
        0x4t
    .end array-data
.end method

.method constructor <init>(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;ZLandroid/net/metrics/IpConnectivityLog;)V
    .locals 1
    .param p1, "apfCapabilities"    # Landroid/net/apf/ApfCapabilities;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "ipManagerCallback"    # Landroid/net/ip/IpManager$Callback;
    .param p4, "multicastFilter"    # Z
    .param p5, "log"    # Landroid/net/metrics/IpConnectivityLog;

    #@0
    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 633
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@a
    .line 242
    iput-object p1, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    #@c
    .line 243
    iput-object p3, p0, Landroid/net/apf/ApfFilter;->mIpManagerCallback:Landroid/net/ip/IpManager$Callback;

    #@e
    .line 244
    iput-object p2, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    #@10
    .line 245
    iput-boolean p4, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    #@12
    .line 246
    iput-object p5, p0, Landroid/net/apf/ApfFilter;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@14
    .line 248
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->maybeStartFilter()V

    #@17
    .line 241
    return-void
.end method

.method private beginProgramLocked()Landroid/net/apf/ApfGenerator;
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    #@0
    .prologue
    .line 851
    new-instance v0, Landroid/net/apf/ApfGenerator;

    #@2
    invoke-direct {v0}, Landroid/net/apf/ApfGenerator;-><init>()V

    #@5
    .line 853
    .local v0, "gen":Landroid/net/apf/ApfGenerator;
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    #@7
    iget v4, v4, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    #@9
    invoke-virtual {v0, v4}, Landroid/net/apf/ApfGenerator;->setApfVersion(I)Z

    #@c
    .line 868
    const-string/jumbo v2, "skipArpFilters"

    #@f
    .line 869
    .local v2, "skipArpFiltersLabel":Ljava/lang/String;
    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@11
    const/16 v5, 0xc

    #@13
    invoke-virtual {v0, v4, v5}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@16
    .line 870
    sget v4, Landroid/system/OsConstants;->ETH_P_ARP:I

    #@18
    invoke-virtual {v0, v4, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@1b
    .line 871
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateArpFilterLocked(Landroid/net/apf/ApfGenerator;)V

    #@1e
    .line 872
    invoke-virtual {v0, v2}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@21
    .line 875
    const-string/jumbo v3, "skipIPv4Filters"

    #@24
    .line 879
    .local v3, "skipIPv4FiltersLabel":Ljava/lang/String;
    sget v4, Landroid/system/OsConstants;->ETH_P_IP:I

    #@26
    invoke-virtual {v0, v4, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@29
    .line 880
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateIPv4FilterLocked(Landroid/net/apf/ApfGenerator;)V

    #@2c
    .line 881
    invoke-virtual {v0, v3}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@2f
    .line 887
    const-string/jumbo v1, "IPv6Filters"

    #@32
    .line 888
    .local v1, "ipv6FilterLabel":Ljava/lang/String;
    sget v4, Landroid/system/OsConstants;->ETH_P_IPV6:I

    #@34
    invoke-virtual {v0, v4, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@37
    .line 891
    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@39
    const/4 v5, 0x0

    #@3a
    invoke-virtual {v0, v4, v5}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@3d
    .line 892
    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@3f
    sget-object v5, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    #@41
    const-string/jumbo v6, "__PASS__"

    #@44
    invoke-virtual {v0, v4, v5, v6}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@47
    .line 893
    const-string/jumbo v4, "__DROP__"

    #@4a
    invoke-virtual {v0, v4}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@4d
    .line 896
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@50
    .line 897
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateIPv6FilterLocked(Landroid/net/apf/ApfGenerator;)V

    #@53
    .line 898
    return-object v0
.end method

.method public static bytesToInt([B)I
    .locals 2
    .param p0, "addrBytes"    # [B

    #@0
    .prologue
    .line 1169
    const/4 v0, 0x0

    #@1
    aget-byte v0, p0, v0

    #@3
    invoke-static {v0}, Landroid/net/apf/ApfFilter;->uint8(B)I

    #@6
    move-result v0

    #@7
    shl-int/lit8 v0, v0, 0x18

    #@9
    .line 1170
    const/4 v1, 0x1

    #@a
    aget-byte v1, p0, v1

    #@c
    invoke-static {v1}, Landroid/net/apf/ApfFilter;->uint8(B)I

    #@f
    move-result v1

    #@10
    shl-int/lit8 v1, v1, 0x10

    #@12
    .line 1169
    add-int/2addr v0, v1

    #@13
    .line 1171
    const/4 v1, 0x2

    #@14
    aget-byte v1, p0, v1

    #@16
    invoke-static {v1}, Landroid/net/apf/ApfFilter;->uint8(B)I

    #@19
    move-result v1

    #@1a
    shl-int/lit8 v1, v1, 0x8

    #@1c
    .line 1169
    add-int/2addr v0, v1

    #@1d
    .line 1172
    const/4 v1, 0x3

    #@1e
    aget-byte v1, p0, v1

    #@20
    invoke-static {v1}, Landroid/net/apf/ApfFilter;->uint8(B)I

    #@23
    move-result v1

    #@24
    .line 1169
    add-int/2addr v0, v1

    #@25
    return v0
.end method

.method private static curTime()J
    .locals 4

    #@0
    .prologue
    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x3e8

    #@6
    div-long/2addr v0, v2

    #@7
    return-wide v0
.end method

.method private static findIPv4LinkAddress(Landroid/net/LinkProperties;)Landroid/net/LinkAddress;
    .locals 5
    .param p0, "lp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1071
    const/4 v2, 0x0

    #@2
    .line 1072
    .local v2, "ipv4Address":Landroid/net/LinkAddress;
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .end local v2    # "ipv4Address":Landroid/net/LinkAddress;
    .local v1, "address$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_3

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/net/LinkAddress;

    #@16
    .line 1073
    .local v0, "address":Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@19
    move-result-object v3

    #@1a
    instance-of v3, v3, Ljava/net/Inet4Address;

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 1076
    if-eqz v2, :cond_1

    #@20
    invoke-virtual {v2, v0}, Landroid/net/LinkAddress;->isSameAddressAs(Landroid/net/LinkAddress;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 1080
    :cond_1
    move-object v2, v0

    #@27
    .local v2, "ipv4Address":Landroid/net/LinkAddress;
    goto :goto_0

    #@28
    .line 1078
    .end local v2    # "ipv4Address":Landroid/net/LinkAddress;
    :cond_2
    return-object v4

    #@29
    .line 1082
    .end local v0    # "address":Landroid/net/LinkAddress;
    :cond_3
    return-object v2
.end method

.method private generateArpFilterLocked(Landroid/net/apf/ApfGenerator;)V
    .locals 6
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x26

    #@2
    const/4 v4, 0x0

    #@3
    .line 684
    const-string/jumbo v0, "checkTargetIPv4"

    #@6
    .line 687
    .local v0, "checkTargetIPv4":Ljava/lang/String;
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@8
    const/16 v2, 0xe

    #@a
    invoke-virtual {p1, v1, v2}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@d
    .line 688
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@f
    sget-object v2, Landroid/net/apf/ApfFilter;->ARP_IPV4_HEADER:[B

    #@11
    const-string/jumbo v3, "__PASS__"

    #@14
    invoke-virtual {p1, v1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@17
    .line 691
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@19
    const/16 v2, 0x14

    #@1b
    invoke-virtual {p1, v1, v2}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@1e
    .line 692
    const/4 v1, 0x1

    #@1f
    const-string/jumbo v2, "checkTargetIPv4"

    #@22
    invoke-virtual {p1, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@25
    .line 693
    const/4 v1, 0x2

    #@26
    const-string/jumbo v2, "__PASS__"

    #@29
    invoke-virtual {p1, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@2c
    .line 696
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@2e
    invoke-virtual {p1, v1, v4}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@31
    .line 697
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@33
    sget-object v2, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    #@35
    const-string/jumbo v3, "__PASS__"

    #@38
    invoke-virtual {p1, v1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@3b
    .line 700
    const-string/jumbo v1, "checkTargetIPv4"

    #@3e
    invoke-virtual {p1, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@41
    .line 701
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    #@43
    if-nez v1, :cond_0

    #@45
    .line 703
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@47
    invoke-virtual {p1, v1, v5}, Landroid/net/apf/ApfGenerator;->addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@4a
    .line 704
    const-string/jumbo v1, "__DROP__"

    #@4d
    invoke-virtual {p1, v4, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@50
    .line 712
    :goto_0
    const-string/jumbo v1, "__PASS__"

    #@53
    invoke-virtual {p1, v1}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@56
    .line 667
    return-void

    #@57
    .line 708
    :cond_0
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@59
    invoke-virtual {p1, v1, v5}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@5c
    .line 709
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@5e
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    #@60
    const-string/jumbo v3, "__DROP__"

    #@63
    invoke-virtual {p1, v1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@66
    goto :goto_0
.end method

.method private generateIPv4FilterLocked(Landroid/net/apf/ApfGenerator;)V
    .locals 6
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x1e

    #@2
    .line 736
    iget-boolean v2, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 737
    const-string/jumbo v1, "skip_dhcp_v4_filter"

    #@9
    .line 741
    .local v1, "skipDhcpv4Filter":Ljava/lang/String;
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@b
    const/16 v3, 0x17

    #@d
    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@10
    .line 742
    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    #@12
    const-string/jumbo v3, "skip_dhcp_v4_filter"

    #@15
    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@18
    .line 744
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@1a
    const/16 v3, 0x14

    #@1c
    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@1f
    .line 745
    const-string/jumbo v2, "skip_dhcp_v4_filter"

    #@22
    const/16 v3, 0x1fff

    #@24
    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0AnyBitsSet(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@27
    .line 747
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    #@29
    const/16 v3, 0xd

    #@2b
    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@2e
    .line 748
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@30
    const/16 v3, 0x10

    #@32
    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad16Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@35
    .line 749
    const-string/jumbo v2, "skip_dhcp_v4_filter"

    #@38
    const/16 v3, 0x44

    #@3a
    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@3d
    .line 751
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@3f
    const/16 v3, 0x32

    #@41
    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@44
    .line 753
    invoke-virtual {p1}, Landroid/net/apf/ApfGenerator;->addAddR1()Landroid/net/apf/ApfGenerator;

    #@47
    .line 754
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@49
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mHardwareAddress:[B

    #@4b
    const-string/jumbo v4, "skip_dhcp_v4_filter"

    #@4e
    invoke-virtual {p1, v2, v3, v4}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@51
    .line 755
    const-string/jumbo v2, "__PASS__"

    #@54
    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@57
    .line 758
    const-string/jumbo v2, "skip_dhcp_v4_filter"

    #@5a
    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@5d
    .line 761
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@5f
    invoke-virtual {p1, v2, v5}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@62
    .line 762
    const/16 v2, 0xf0

    #@64
    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addAnd(I)Landroid/net/apf/ApfGenerator;

    #@67
    .line 763
    const-string/jumbo v2, "__DROP__"

    #@6a
    const/16 v3, 0xe0

    #@6c
    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@6f
    .line 766
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@71
    invoke-virtual {p1, v2, v5}, Landroid/net/apf/ApfGenerator;->addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@74
    .line 767
    const-string/jumbo v2, "__DROP__"

    #@77
    const/4 v3, -0x1

    #@78
    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@7b
    .line 768
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    #@7d
    if-eqz v2, :cond_0

    #@7f
    iget v2, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    #@81
    const/16 v3, 0x1f

    #@83
    if-ge v2, v3, :cond_0

    #@85
    .line 769
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    #@87
    iget v3, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    #@89
    invoke-static {v2, v3}, Landroid/net/apf/ApfFilter;->ipv4BroadcastAddress([BI)I

    #@8c
    move-result v0

    #@8d
    .line 770
    .local v0, "broadcastAddr":I
    const-string/jumbo v2, "__DROP__"

    #@90
    invoke-virtual {p1, v0, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@93
    .line 774
    .end local v0    # "broadcastAddr":I
    :cond_0
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@95
    const/4 v3, 0x0

    #@96
    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@99
    .line 775
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@9b
    sget-object v3, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    #@9d
    const-string/jumbo v4, "__PASS__"

    #@a0
    invoke-virtual {p1, v2, v3, v4}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@a3
    .line 776
    const-string/jumbo v2, "__DROP__"

    #@a6
    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@a9
    .line 780
    .end local v1    # "skipDhcpv4Filter":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "__PASS__"

    #@ac
    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@af
    .line 722
    return-void
.end method

.method private generateIPv6FilterLocked(Landroid/net/apf/ApfGenerator;)V
    .locals 5
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x26

    #@2
    .line 801
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@4
    const/16 v3, 0x14

    #@6
    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@9
    .line 804
    iget-boolean v2, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 806
    const-string/jumbo v0, "skipIPv6MulticastFilter"

    #@10
    .line 807
    .local v0, "skipIpv6MulticastFilterLabel":Ljava/lang/String;
    sget v2, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    #@12
    invoke-virtual {p1, v2, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@15
    .line 810
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@17
    invoke-virtual {p1, v2, v4}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@1a
    .line 811
    const-string/jumbo v2, "__DROP__"

    #@1d
    const/16 v3, 0xff

    #@1f
    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@22
    .line 813
    const-string/jumbo v2, "__PASS__"

    #@25
    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@28
    .line 814
    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@2b
    .line 821
    .end local v0    # "skipIpv6MulticastFilterLabel":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "skipUnsolicitedMulticastNA"

    #@2e
    .line 823
    .local v1, "skipUnsolicitedMulticastNALabel":Ljava/lang/String;
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@30
    const/16 v3, 0x36

    #@32
    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@35
    .line 824
    const/16 v2, 0x88

    #@37
    invoke-virtual {p1, v2, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@3a
    .line 827
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@3c
    invoke-virtual {p1, v2, v4}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@3f
    .line 828
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@41
    sget-object v3, Landroid/net/apf/ApfFilter;->IPV6_ALL_NODES_ADDRESS:[B

    #@43
    invoke-virtual {p1, v2, v3, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@46
    .line 830
    const-string/jumbo v2, "__DROP__"

    #@49
    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@4c
    .line 831
    invoke-virtual {p1, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@4f
    .line 791
    return-void

    #@50
    .line 817
    .end local v1    # "skipUnsolicitedMulticastNALabel":Ljava/lang/String;
    :cond_0
    sget v2, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    #@52
    const-string/jumbo v3, "__PASS__"

    #@55
    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@58
    goto :goto_0
.end method

.method private static getUint16(Ljava/nio/ByteBuffer;I)J
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1154
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/net/apf/ApfFilter;->uint16(S)I

    #@7
    move-result v0

    #@8
    int-to-long v0, v0

    #@9
    return-wide v0
.end method

.method private static getUint32(Ljava/nio/ByteBuffer;I)J
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1158
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/net/apf/ApfFilter;->uint32(I)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method private getUniqueNumberLocked()J
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    #@0
    .prologue
    .line 257
    iget-wide v0, p0, Landroid/net/apf/ApfFilter;->mUniqueCounter:J

    #@2
    const-wide/16 v2, 0x1

    #@4
    add-long/2addr v2, v0

    #@5
    iput-wide v2, p0, Landroid/net/apf/ApfFilter;->mUniqueCounter:J

    #@7
    return-wide v0
.end method

.method private hexDump(Ljava/lang/String;[BI)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "packet"    # [B
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    move-result-object v0

    #@a
    invoke-static {p2, v1, p3, v1}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    #@19
    .line 954
    return-void
.end method

.method public static ipv4BroadcastAddress([BI)I
    .locals 4
    .param p0, "addrBytes"    # [B
    .param p1, "prefixLength"    # I

    #@0
    .prologue
    .line 1164
    invoke-static {p0}, Landroid/net/apf/ApfFilter;->bytesToInt([B)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    invoke-static {v1}, Landroid/net/apf/ApfFilter;->uint32(I)J

    #@8
    move-result-wide v2

    #@9
    ushr-long/2addr v2, p1

    #@a
    long-to-int v1, v2

    #@b
    or-int/2addr v0, v1

    #@c
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 252
    const-string/jumbo v0, "ApfFilter"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "("

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    #@11
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "): "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 251
    return-void
.end method

.method public static maybeCreate(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;Z)Landroid/net/apf/ApfFilter;
    .locals 6
    .param p0, "apfCapabilities"    # Landroid/net/apf/ApfCapabilities;
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p2, "ipManagerCallback"    # Landroid/net/ip/IpManager$Callback;
    .param p3, "multicastFilter"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1034
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    :cond_0
    return-object v3

    #@6
    .line 1035
    :cond_1
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    #@8
    if-nez v0, :cond_2

    #@a
    return-object v3

    #@b
    .line 1036
    :cond_2
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    #@d
    const/16 v1, 0x200

    #@f
    if-ge v0, v1, :cond_3

    #@11
    .line 1037
    const-string/jumbo v0, "ApfFilter"

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Unacceptably small APF limit: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    iget v2, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 1038
    return-object v3

    #@2e
    .line 1044
    :cond_3
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    #@30
    sget v1, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    #@32
    if-eq v0, v1, :cond_4

    #@34
    return-object v3

    #@35
    .line 1045
    :cond_4
    new-instance v0, Landroid/net/apf/ApfGenerator;

    #@37
    invoke-direct {v0}, Landroid/net/apf/ApfGenerator;-><init>()V

    #@3a
    iget v1, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    #@3c
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator;->setApfVersion(I)Z

    #@3f
    move-result v0

    #@40
    if-nez v0, :cond_5

    #@42
    .line 1046
    const-string/jumbo v0, "ApfFilter"

    #@45
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v2, "Unsupported APF version: "

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    iget v2, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 1047
    return-object v3

    #@5f
    .line 1049
    :cond_5
    new-instance v0, Landroid/net/apf/ApfFilter;

    #@61
    .line 1050
    new-instance v5, Landroid/net/metrics/IpConnectivityLog;

    #@63
    invoke-direct {v5}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    #@66
    move-object v1, p0

    #@67
    move-object v2, p1

    #@68
    move-object v3, p2

    #@69
    move v4, p3

    #@6a
    .line 1049
    invoke-direct/range {v0 .. v5}, Landroid/net/apf/ApfFilter;-><init>(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;ZLandroid/net/metrics/IpConnectivityLog;)V

    #@6d
    return-object v0
.end method

.method private declared-synchronized processRa([BI)Landroid/net/apf/ApfFilter$ProcessRaResult;
    .locals 6
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 979
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    if-ge v1, v3, :cond_2

    #@a
    .line 980
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/net/apf/ApfFilter$Ra;

    #@12
    .line 981
    .local v2, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v2, p1, p2}, Landroid/net/apf/ApfFilter$Ra;->matches([BI)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 984
    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    #@1b
    move-result-wide v4

    #@1c
    iput-wide v4, v2, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    #@1e
    .line 985
    invoke-virtual {v2, p1, p2}, Landroid/net/apf/ApfFilter$Ra;->minLifetime([BI)J

    #@21
    move-result-wide v4

    #@22
    iput-wide v4, v2, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    #@24
    .line 986
    iget v3, v2, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    #@26
    add-int/lit8 v3, v3, 0x1

    #@28
    iput v3, v2, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    #@2a
    .line 995
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@2c
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    check-cast v3, Landroid/net/apf/ApfFilter$Ra;

    #@34
    const/4 v5, 0x0

    #@35
    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@38
    .line 998
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->shouldInstallnewProgram()Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_0

    #@3e
    .line 999
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V

    #@41
    .line 1000
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_EXPIRY:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    monitor-exit p0

    #@44
    return-object v3

    #@45
    .line 1002
    :cond_0
    :try_start_1
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->MATCH:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    monitor-exit p0

    #@48
    return-object v3

    #@49
    .line 979
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 1005
    .end local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :cond_2
    :try_start_2
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->purgeExpiredRasLocked()V

    #@4f
    .line 1007
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@54
    move-result v3

    #@55
    const/16 v4, 0xa

    #@57
    if-lt v3, v4, :cond_3

    #@59
    .line 1008
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->DROPPED:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    monitor-exit p0

    #@5c
    return-object v3

    #@5d
    .line 1012
    :cond_3
    :try_start_3
    new-instance v2, Landroid/net/apf/ApfFilter$Ra;

    #@5f
    invoke-direct {v2, p0, p1, p2}, Landroid/net/apf/ApfFilter$Ra;-><init>(Landroid/net/apf/ApfFilter;[BI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@62
    .line 1018
    .restart local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :try_start_4
    invoke-virtual {v2}, Landroid/net/apf/ApfFilter$Ra;->isExpired()Z

    #@65
    move-result v3

    #@66
    if-eqz v3, :cond_4

    #@68
    .line 1019
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->ZERO_LIFETIME:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6a
    monitor-exit p0

    #@6b
    return-object v3

    #@6c
    .line 1013
    .end local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :catch_0
    move-exception v0

    #@6d
    .line 1014
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v3, "ApfFilter"

    #@70
    new-instance v4, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v5, "Error parsing RA: "

    #@78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    .line 1015
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->PARSE_ERROR:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@89
    monitor-exit p0

    #@8a
    return-object v3

    #@8b
    .line 1021
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :cond_4
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v4, "Adding "

    #@93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v3

    #@97
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v3

    #@9b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v3

    #@9f
    invoke-direct {p0, v3}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    #@a2
    .line 1022
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@a4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a7
    .line 1023
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V

    #@aa
    .line 1024
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_NEW_RA:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@ac
    monitor-exit p0

    #@ad
    return-object v3

    #@ae
    .end local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :catchall_0
    move-exception v3

    #@af
    monitor-exit p0

    #@b0
    throw v3
.end method

.method private purgeExpiredRasLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    #@0
    .prologue
    .line 960
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 961
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/net/apf/ApfFilter$Ra;

    #@11
    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$Ra;->isExpired()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 962
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Expiring "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {p0, v1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    #@34
    .line 963
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@39
    goto :goto_0

    #@3a
    .line 965
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 959
    :cond_1
    return-void
.end method

.method private shouldInstallnewProgram()Z
    .locals 6

    #@0
    .prologue
    .line 950
    iget-wide v2, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    #@2
    iget-wide v4, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    #@4
    add-long v0, v2, v4

    #@6
    .line 951
    .local v0, "expiry":J
    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    #@9
    move-result-wide v2

    #@a
    const-wide/16 v4, 0x1e

    #@c
    add-long/2addr v2, v4

    #@d
    cmp-long v2, v0, v2

    #@f
    if-gez v2, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :goto_0
    return v2

    #@13
    :cond_0
    const/4 v2, 0x0

    #@14
    goto :goto_0
.end method

.method private static uint16(S)I
    .locals 1
    .param p0, "s"    # S

    #@0
    .prologue
    .line 1146
    const v0, 0xffff

    #@3
    and-int/2addr v0, p0

    #@4
    return v0
.end method

.method private static uint32(I)J
    .locals 4
    .param p0, "i"    # I

    #@0
    .prologue
    .line 1150
    int-to-long v0, p0

    #@1
    const-wide v2, 0xffffffffL

    #@6
    and-long/2addr v0, v2

    #@7
    return-wide v0
.end method

.method private static uint8(B)I
    .locals 1
    .param p0, "b"    # B

    #@0
    .prologue
    .line 1142
    and-int/lit16 v0, p0, 0xff

    #@2
    return v0
.end method


# virtual methods
.method public declared-synchronized dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 10
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1099
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v4, "Capabilities: "

    #@9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v3

    #@d
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1a
    .line 1100
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "Receive thread: "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    #@28
    if-eqz v3, :cond_0

    #@2a
    const-string/jumbo v3, "RUNNING"

    #@2d
    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@38
    .line 1101
    new-instance v3, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v4, "Multicast: "

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    iget-boolean v3, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    #@46
    if-eqz v3, :cond_1

    #@48
    const-string/jumbo v3, "DROP"

    #@4b
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    .line 1103
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v4, "IPv4 address: "

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    #@64
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@77
    .line 1106
    :goto_2
    :try_start_2
    iget-wide v4, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    #@79
    const-wide/16 v6, 0x0

    #@7b
    cmp-long v3, v4, v6

    #@7d
    if-nez v3, :cond_2

    #@7f
    .line 1107
    const-string/jumbo v3, "No program installed."

    #@82
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@85
    monitor-exit p0

    #@86
    .line 1108
    return-void

    #@87
    .line 1100
    :cond_0
    :try_start_3
    const-string/jumbo v3, "STOPPED"

    #@8a
    goto :goto_0

    #@8b
    .line 1101
    :cond_1
    const-string/jumbo v3, "ALLOW"

    #@8e
    goto :goto_1

    #@8f
    .line 1110
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v4, "Program updates: "

    #@97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v3

    #@9b
    iget v4, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    #@9d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v3

    #@a1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v3

    #@a5
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@a8
    .line 1112
    const-string/jumbo v3, "Last program length %d, installed %ds ago, lifetime %ds"

    #@ab
    .line 1111
    const/4 v4, 0x3

    #@ac
    new-array v4, v4, [Ljava/lang/Object;

    #@ae
    .line 1113
    iget-object v5, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    #@b0
    array-length v5, v5

    #@b1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b4
    move-result-object v5

    #@b5
    const/4 v6, 0x0

    #@b6
    aput-object v5, v4, v6

    #@b8
    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    #@bb
    move-result-wide v6

    #@bc
    iget-wide v8, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    #@be
    sub-long/2addr v6, v8

    #@bf
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@c2
    move-result-object v5

    #@c3
    const/4 v6, 0x1

    #@c4
    aput-object v5, v4, v6

    #@c6
    .line 1114
    iget-wide v6, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    #@c8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@cb
    move-result-object v5

    #@cc
    const/4 v6, 0x2

    #@cd
    aput-object v5, v4, v6

    #@cf
    .line 1111
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d2
    move-result-object v3

    #@d3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@d6
    .line 1116
    const-string/jumbo v3, "RA filters:"

    #@d9
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@dc
    .line 1117
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@df
    .line 1118
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@e1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e4
    move-result-object v2

    #@e5
    .local v2, "ra$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e8
    move-result v3

    #@e9
    if-eqz v3, :cond_3

    #@eb
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ee
    move-result-object v1

    #@ef
    check-cast v1, Landroid/net/apf/ApfFilter$Ra;

    #@f1
    .line 1119
    .local v1, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@f4
    .line 1120
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@f7
    .line 1122
    const-string/jumbo v3, "Seen: %d, last %ds ago"

    #@fa
    .line 1121
    const/4 v4, 0x2

    #@fb
    new-array v4, v4, [Ljava/lang/Object;

    #@fd
    .line 1122
    iget v5, v1, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    #@ff
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@102
    move-result-object v5

    #@103
    const/4 v6, 0x0

    #@104
    aput-object v5, v4, v6

    #@106
    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    #@109
    move-result-wide v6

    #@10a
    iget-wide v8, v1, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    #@10c
    sub-long/2addr v6, v8

    #@10d
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@110
    move-result-object v5

    #@111
    const/4 v6, 0x1

    #@112
    aput-object v5, v4, v6

    #@114
    .line 1121
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@117
    move-result-object v3

    #@118
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@11b
    .line 1124
    const-string/jumbo v3, "Last match:"

    #@11e
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@121
    .line 1125
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@124
    .line 1126
    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$Ra;->getLastMatchingPacket()Ljava/lang/String;

    #@127
    move-result-object v3

    #@128
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@12b
    .line 1127
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@12e
    .line 1129
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@131
    goto :goto_3

    #@132
    .end local v1    # "ra":Landroid/net/apf/ApfFilter$Ra;
    .end local v2    # "ra$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@133
    monitor-exit p0

    #@134
    throw v3

    #@135
    .line 1131
    .restart local v2    # "ra$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@138
    .line 1134
    const-string/jumbo v3, "Last program:"

    #@13b
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@13e
    .line 1135
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@141
    .line 1136
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    #@143
    const/4 v4, 0x0

    #@144
    invoke-static {v3, v4}, Lcom/android/internal/util/HexDump;->toHexString([BZ)Ljava/lang/String;

    #@147
    move-result-object v3

    #@148
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@14b
    .line 1137
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@14e
    monitor-exit p0

    #@14f
    .line 1098
    return-void

    #@150
    .line 1104
    .end local v2    # "ra$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@151
    .local v0, "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method installNewProgramLocked()V
    .locals 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    #@0
    .prologue
    .line 907
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->purgeExpiredRasLocked()V

    #@3
    .line 908
    new-instance v12, Ljava/util/ArrayList;

    #@5
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 910
    .local v12, "rasToFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/apf/ApfFilter$Ra;>;"
    const-wide v2, 0x7fffffffffffffffL

    #@d
    .line 913
    .local v2, "programMinLifetime":J
    :try_start_0
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->beginProgramLocked()Landroid/net/apf/ApfGenerator;

    #@10
    move-result-object v8

    #@11
    .line 914
    .local v8, "gen":Landroid/net/apf/ApfGenerator;
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v11

    #@17
    .local v11, "ra$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v10

    #@21
    check-cast v10, Landroid/net/apf/ApfFilter$Ra;

    #@23
    .line 915
    .local v10, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v10, v8}, Landroid/net/apf/ApfFilter$Ra;->generateFilterLocked(Landroid/net/apf/ApfGenerator;)J

    #@26
    .line 917
    invoke-virtual {v8}, Landroid/net/apf/ApfGenerator;->programLengthOverEstimate()I

    #@29
    move-result v1

    #@2a
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    #@2c
    iget v4, v4, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    #@2e
    if-le v1, v4, :cond_1

    #@30
    .line 921
    .end local v10    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :cond_0
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->beginProgramLocked()Landroid/net/apf/ApfGenerator;

    #@33
    move-result-object v8

    #@34
    .line 922
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v11

    #@38
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_2

    #@3e
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v10

    #@42
    check-cast v10, Landroid/net/apf/ApfFilter$Ra;

    #@44
    .line 923
    .restart local v10    # "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v10, v8}, Landroid/net/apf/ApfFilter$Ra;->generateFilterLocked(Landroid/net/apf/ApfGenerator;)J

    #@47
    move-result-wide v4

    #@48
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@4b
    move-result-wide v2

    #@4c
    goto :goto_1

    #@4d
    .line 918
    :cond_1
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/net/apf/ApfGenerator$IllegalInstructionException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    goto :goto_0

    #@51
    .line 928
    .end local v8    # "gen":Landroid/net/apf/ApfGenerator;
    .end local v10    # "ra":Landroid/net/apf/ApfFilter$Ra;
    .end local v11    # "ra$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@52
    .line 929
    .local v0, "e":Landroid/net/apf/ApfGenerator$IllegalInstructionException;
    const-string/jumbo v1, "ApfFilter"

    #@55
    const-string/jumbo v4, "Program failed to generate: "

    #@58
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    .line 930
    return-void

    #@5c
    .line 927
    .end local v0    # "e":Landroid/net/apf/ApfGenerator$IllegalInstructionException;
    .restart local v8    # "gen":Landroid/net/apf/ApfGenerator;
    .restart local v11    # "ra$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-virtual {v8}, Landroid/net/apf/ApfGenerator;->generate()[B
    :try_end_1
    .catch Landroid/net/apf/ApfGenerator$IllegalInstructionException; {:try_start_1 .. :try_end_1} :catch_0

    #@5f
    move-result-object v9

    #@60
    .line 932
    .local v9, "program":[B
    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    #@63
    move-result-wide v4

    #@64
    iput-wide v4, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    #@66
    .line 933
    iput-wide v2, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    #@68
    .line 934
    iput-object v9, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    #@6a
    .line 935
    iget v1, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    #@6c
    add-int/lit8 v1, v1, 0x1

    #@6e
    iput v1, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    #@70
    .line 940
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIpManagerCallback:Landroid/net/ip/IpManager$Callback;

    #@72
    invoke-virtual {v1, v9}, Landroid/net/ip/IpManager$Callback;->installPacketFilter([B)V

    #@75
    .line 941
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    #@77
    if-eqz v1, :cond_3

    #@79
    const/4 v1, 0x1

    #@7a
    :goto_2
    iget-boolean v4, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    #@7c
    invoke-static {v1, v4}, Landroid/net/metrics/ApfProgramEvent;->flagsFor(ZZ)I

    #@7f
    move-result v7

    #@80
    .line 942
    .local v7, "flags":I
    iget-object v13, p0, Landroid/net/apf/ApfFilter;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@82
    new-instance v1, Landroid/net/metrics/ApfProgramEvent;

    #@84
    .line 943
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@87
    move-result v4

    #@88
    iget-object v5, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@8a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@8d
    move-result v5

    #@8e
    array-length v6, v9

    #@8f
    .line 942
    invoke-direct/range {v1 .. v7}, Landroid/net/metrics/ApfProgramEvent;-><init>(JIIII)V

    #@92
    invoke-virtual {v13, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    #@95
    .line 906
    return-void

    #@96
    .line 941
    .end local v7    # "flags":I
    :cond_3
    const/4 v1, 0x0

    #@97
    goto :goto_2
.end method

.method maybeStartFilter()V
    .locals 6

    #@0
    .prologue
    .line 268
    :try_start_0
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    #@2
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    #@5
    move-result-object v3

    #@6
    iput-object v3, p0, Landroid/net/apf/ApfFilter;->mHardwareAddress:[B

    #@8
    .line 269
    monitor-enter p0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 271
    :try_start_1
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    :try_start_2
    monitor-exit p0

    #@d
    .line 273
    sget v3, Landroid/system/OsConstants;->AF_PACKET:I

    #@f
    sget v4, Landroid/system/OsConstants;->SOCK_RAW:I

    #@11
    sget v5, Landroid/system/OsConstants;->ETH_P_IPV6:I

    #@13
    invoke-static {v3, v4, v5}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    #@16
    move-result-object v2

    #@17
    .line 274
    .local v2, "socket":Ljava/io/FileDescriptor;
    new-instance v0, Landroid/system/PacketSocketAddress;

    #@19
    sget v3, Landroid/system/OsConstants;->ETH_P_IPV6:I

    #@1b
    int-to-short v3, v3

    #@1c
    .line 275
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    #@1e
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getIndex()I

    #@21
    move-result v4

    #@22
    .line 274
    invoke-direct {v0, v3, v4}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    #@25
    .line 276
    .local v0, "addr":Landroid/system/PacketSocketAddress;
    invoke-static {v2, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    #@28
    .line 277
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    #@2a
    iget v3, v3, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    #@2c
    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->attachRaFilter(Ljava/io/FileDescriptor;I)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    #@2f
    .line 282
    new-instance v3, Landroid/net/apf/ApfFilter$ReceiveThread;

    #@31
    invoke-direct {v3, p0, v2}, Landroid/net/apf/ApfFilter$ReceiveThread;-><init>(Landroid/net/apf/ApfFilter;Ljava/io/FileDescriptor;)V

    #@34
    iput-object v3, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    #@36
    .line 283
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    #@38
    invoke-virtual {v3}, Landroid/net/apf/ApfFilter$ReceiveThread;->start()V

    #@3b
    .line 265
    return-void

    #@3c
    .line 269
    .end local v0    # "addr":Landroid/system/PacketSocketAddress;
    .end local v2    # "socket":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v3

    #@3d
    :try_start_3
    monitor-exit p0

    #@3e
    throw v3
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0

    #@3f
    .line 278
    :catch_0
    move-exception v1

    #@40
    .line 279
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ApfFilter"

    #@43
    const-string/jumbo v4, "Error starting filter"

    #@46
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@49
    .line 280
    return-void
.end method

.method public declared-synchronized setLinkProperties(Landroid/net/LinkProperties;)V
    .locals 4
    .param p1, "lp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1087
    :try_start_0
    invoke-static {p1}, Landroid/net/apf/ApfFilter;->findIPv4LinkAddress(Landroid/net/LinkProperties;)Landroid/net/LinkAddress;

    #@4
    move-result-object v1

    #@5
    .line 1088
    .local v1, "ipv4Address":Landroid/net/LinkAddress;
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    #@e
    move-result-object v0

    #@f
    .line 1089
    :goto_0
    if-eqz v1, :cond_1

    #@11
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    #@14
    move-result v2

    #@15
    .line 1090
    .local v2, "prefix":I
    :goto_1
    iget v3, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    #@17
    if-ne v2, v3, :cond_2

    #@19
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    #@1b
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_2

    #@21
    monitor-exit p0

    #@22
    .line 1091
    return-void

    #@23
    .line 1088
    .end local v2    # "prefix":I
    :cond_0
    const/4 v0, 0x0

    #@24
    .local v0, "addr":[B
    goto :goto_0

    #@25
    .line 1089
    .end local v0    # "addr":[B
    :cond_1
    const/4 v2, 0x0

    #@26
    .restart local v2    # "prefix":I
    goto :goto_1

    #@27
    .line 1093
    :cond_2
    :try_start_1
    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    #@29
    .line 1094
    iput v2, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    #@2b
    .line 1095
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    monitor-exit p0

    #@2f
    .line 1085
    return-void

    #@30
    .end local v1    # "ipv4Address":Landroid/net/LinkAddress;
    .end local v2    # "prefix":I
    :catchall_0
    move-exception v3

    #@31
    monitor-exit p0

    #@32
    throw v3
.end method

.method public declared-synchronized setMulticastFilter(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1063
    :try_start_0
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    #@3
    if-eq v0, p1, :cond_0

    #@5
    .line 1064
    iput-boolean p1, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    #@7
    .line 1065
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 1062
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1054
    :try_start_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1055
    const-string/jumbo v0, "shutting down"

    #@8
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    #@b
    .line 1056
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    #@d
    invoke-virtual {v0}, Landroid/net/apf/ApfFilter$ReceiveThread;->halt()V

    #@10
    .line 1057
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    #@13
    .line 1059
    :cond_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 1053
    return-void

    #@1a
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
.end method
