.class public Landroid/net/apf/ApfFilter;
.super Ljava/lang/Object;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/apf/ApfFilter$Ra;,
        Landroid/net/apf/ApfFilter$ReceiveThread;
    }
.end annotation


# static fields
.field private static ARP_HEADER_OFFSET:I = 0x0

.field private static final ARP_IPV4_REQUEST_HEADER:[B

.field private static ARP_TARGET_IP_ADDRESS_OFFSET:I = 0x0

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
.method static synthetic -wrap0()J
    .locals 2

    #@0
    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap1(Landroid/net/apf/ApfFilter;)J
    .locals 2

    #@0
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->getUniqueNumberLocked()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap2(Landroid/net/apf/ApfFilter;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/net/apf/ApfFilter;[BI)V
    .locals 0
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/apf/ApfFilter;->processRa([BI)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 114
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [B

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    #@8
    .line 130
    const/16 v0, 0x10

    #@a
    new-array v0, v0, [B

    #@c
    fill-array-data v0, :array_1

    #@f
    .line 129
    sput-object v0, Landroid/net/apf/ApfFilter;->IPV6_ALL_NODES_ADDRESS:[B

    #@11
    .line 144
    const/16 v0, 0xe

    #@13
    sput v0, Landroid/net/apf/ApfFilter;->ARP_HEADER_OFFSET:I

    #@15
    .line 145
    const/16 v0, 0x8

    #@17
    new-array v0, v0, [B

    #@19
    fill-array-data v0, :array_2

    #@1c
    sput-object v0, Landroid/net/apf/ApfFilter;->ARP_IPV4_REQUEST_HEADER:[B

    #@1e
    .line 152
    const/16 v0, 0x26

    #@20
    sput v0, Landroid/net/apf/ApfFilter;->ARP_TARGET_IP_ADDRESS_OFFSET:I

    #@22
    .line 71
    return-void

    #@23
    .line 114
    nop

    #@24
    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    #@2b
    .line 130
    nop

    #@2c
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

    #@38
    .line 145
    :array_2
    .array-data 1
        0x0t
        0x1t
        0x8t
        0x0t
        0x6t
        0x4t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;Z)V
    .locals 1
    .param p1, "apfCapabilities"    # Landroid/net/apf/ApfCapabilities;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "ipManagerCallback"    # Landroid/net/ip/IpManager$Callback;
    .param p4, "multicastFilter"    # Z

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 552
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@a
    .line 172
    iput-object p1, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    #@c
    .line 173
    iput-object p3, p0, Landroid/net/apf/ApfFilter;->mIpManagerCallback:Landroid/net/ip/IpManager$Callback;

    #@e
    .line 174
    iput-object p2, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    #@10
    .line 175
    iput-boolean p4, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    #@12
    .line 177
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->maybeStartFilter()V

    #@15
    .line 171
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
    .line 727
    new-instance v0, Landroid/net/apf/ApfGenerator;

    #@2
    invoke-direct {v0}, Landroid/net/apf/ApfGenerator;-><init>()V

    #@5
    .line 729
    .local v0, "gen":Landroid/net/apf/ApfGenerator;
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    #@7
    iget v4, v4, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    #@9
    invoke-virtual {v0, v4}, Landroid/net/apf/ApfGenerator;->setApfVersion(I)Z

    #@c
    .line 744
    const-string/jumbo v2, "skipArpFilters"

    #@f
    .line 745
    .local v2, "skipArpFiltersLabel":Ljava/lang/String;
    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@11
    const/16 v5, 0xc

    #@13
    invoke-virtual {v0, v4, v5}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@16
    .line 746
    sget v4, Landroid/system/OsConstants;->ETH_P_ARP:I

    #@18
    invoke-virtual {v0, v4, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@1b
    .line 747
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateArpFilterLocked(Landroid/net/apf/ApfGenerator;)V

    #@1e
    .line 748
    invoke-virtual {v0, v2}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@21
    .line 751
    const-string/jumbo v3, "skipIPv4Filters"

    #@24
    .line 755
    .local v3, "skipIPv4FiltersLabel":Ljava/lang/String;
    sget v4, Landroid/system/OsConstants;->ETH_P_IP:I

    #@26
    invoke-virtual {v0, v4, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@29
    .line 756
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateIPv4FilterLocked(Landroid/net/apf/ApfGenerator;)V

    #@2c
    .line 757
    invoke-virtual {v0, v3}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@2f
    .line 763
    const-string/jumbo v1, "IPv6Filters"

    #@32
    .line 764
    .local v1, "ipv6FilterLabel":Ljava/lang/String;
    sget v4, Landroid/system/OsConstants;->ETH_P_IPV6:I

    #@34
    invoke-virtual {v0, v4, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@37
    .line 767
    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@39
    const/4 v5, 0x0

    #@3a
    invoke-virtual {v0, v4, v5}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@3d
    .line 768
    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@3f
    sget-object v5, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    #@41
    const-string/jumbo v6, "__PASS__"

    #@44
    invoke-virtual {v0, v4, v5, v6}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@47
    .line 769
    const-string/jumbo v4, "__DROP__"

    #@4a
    invoke-virtual {v0, v4}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@4d
    .line 772
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@50
    .line 773
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateIPv6FilterLocked(Landroid/net/apf/ApfGenerator;)V

    #@53
    .line 774
    return-object v0
.end method

.method private static curTime()J
    .locals 4

    #@0
    .prologue
    .line 217
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

.method private static findIPv4Address(Landroid/net/LinkProperties;)[B
    .locals 7
    .param p0, "lp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 929
    const/4 v3, 0x0

    #@2
    .line 930
    .local v3, "ipv4Address":[B
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    #@5
    move-result-object v4

    #@6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .end local v3    # "ipv4Address":[B
    .local v2, "inetAddr$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_3

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/net/InetAddress;

    #@16
    .line 931
    .local v1, "inetAddr":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    #@19
    move-result-object v0

    #@1a
    .line 932
    .local v0, "addr":[B
    array-length v4, v0

    #@1b
    const/4 v5, 0x4

    #@1c
    if-ne v4, v5, :cond_0

    #@1e
    .line 934
    if-eqz v3, :cond_1

    #@20
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_2

    #@26
    .line 935
    :cond_1
    move-object v3, v0

    #@27
    .local v3, "ipv4Address":[B
    goto :goto_0

    #@28
    .line 934
    .end local v3    # "ipv4Address":[B
    :cond_2
    return-object v6

    #@29
    .line 937
    .end local v0    # "addr":[B
    .end local v1    # "inetAddr":Ljava/net/InetAddress;
    :cond_3
    return-object v3
.end method

.method private generateArpFilterLocked(Landroid/net/apf/ApfGenerator;)V
    .locals 3
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
    .line 596
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 598
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@6
    sget v1, Landroid/net/apf/ApfFilter;->ARP_HEADER_OFFSET:I

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@b
    .line 599
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@d
    sget-object v1, Landroid/net/apf/ApfFilter;->ARP_IPV4_REQUEST_HEADER:[B

    #@f
    const-string/jumbo v2, "__PASS__"

    #@12
    invoke-virtual {p1, v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@15
    .line 601
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@17
    sget v1, Landroid/net/apf/ApfFilter;->ARP_TARGET_IP_ADDRESS_OFFSET:I

    #@19
    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@1c
    .line 602
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@1e
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    #@20
    const-string/jumbo v2, "__DROP__"

    #@23
    invoke-virtual {p1, v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@26
    .line 606
    :cond_0
    const-string/jumbo v0, "__PASS__"

    #@29
    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@2c
    .line 586
    return-void
.end method

.method private generateIPv4FilterLocked(Landroid/net/apf/ApfGenerator;)V
    .locals 3
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
    .line 628
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 630
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@6
    const/16 v1, 0x1e

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@b
    .line 631
    const/16 v0, 0xf0

    #@d
    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addAnd(I)Landroid/net/apf/ApfGenerator;

    #@10
    .line 632
    const-string/jumbo v0, "__DROP__"

    #@13
    const/16 v1, 0xe0

    #@15
    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@18
    .line 636
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@1e
    .line 637
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@20
    sget-object v1, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    #@22
    const-string/jumbo v2, "__PASS__"

    #@25
    invoke-virtual {p1, v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@28
    .line 639
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@2a
    const/16 v1, 0x17

    #@2c
    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@2f
    .line 640
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    #@31
    const-string/jumbo v1, "__DROP__"

    #@34
    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@37
    .line 642
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@39
    const/16 v1, 0x14

    #@3b
    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@3e
    .line 643
    const-string/jumbo v0, "__DROP__"

    #@41
    const/16 v1, 0x1fff

    #@43
    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0AnyBitsSet(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@46
    .line 645
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    #@48
    const/16 v1, 0xd

    #@4a
    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@4d
    .line 646
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@4f
    const/16 v1, 0x10

    #@51
    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad16Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@54
    .line 647
    const-string/jumbo v0, "__DROP__"

    #@57
    const/16 v1, 0x44

    #@59
    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@5c
    .line 649
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@5e
    const/16 v1, 0x32

    #@60
    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@63
    .line 651
    invoke-virtual {p1}, Landroid/net/apf/ApfGenerator;->addAddR1()Landroid/net/apf/ApfGenerator;

    #@66
    .line 652
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@68
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mHardwareAddress:[B

    #@6a
    const-string/jumbo v2, "__DROP__"

    #@6d
    invoke-virtual {p1, v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@70
    .line 656
    :cond_0
    const-string/jumbo v0, "__PASS__"

    #@73
    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@76
    .line 616
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
    .line 677
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@4
    const/16 v3, 0x14

    #@6
    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@9
    .line 680
    iget-boolean v2, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 682
    const-string/jumbo v0, "skipIPv6MulticastFilter"

    #@10
    .line 683
    .local v0, "skipIpv6MulticastFilterLabel":Ljava/lang/String;
    sget v2, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    #@12
    invoke-virtual {p1, v2, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@15
    .line 686
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@17
    invoke-virtual {p1, v2, v4}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@1a
    .line 687
    const-string/jumbo v2, "__DROP__"

    #@1d
    const/16 v3, 0xff

    #@1f
    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@22
    .line 689
    const-string/jumbo v2, "__PASS__"

    #@25
    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@28
    .line 690
    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@2b
    .line 697
    .end local v0    # "skipIpv6MulticastFilterLabel":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "skipUnsolicitedMulticastNA"

    #@2e
    .line 699
    .local v1, "skipUnsolicitedMulticastNALabel":Ljava/lang/String;
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@30
    const/16 v3, 0x36

    #@32
    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@35
    .line 700
    const/16 v2, 0x88

    #@37
    invoke-virtual {p1, v2, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@3a
    .line 703
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@3c
    invoke-virtual {p1, v2, v4}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@3f
    .line 704
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@41
    sget-object v3, Landroid/net/apf/ApfFilter;->IPV6_ALL_NODES_ADDRESS:[B

    #@43
    invoke-virtual {p1, v2, v3, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@46
    .line 706
    const-string/jumbo v2, "__DROP__"

    #@49
    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@4c
    .line 707
    invoke-virtual {p1, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@4f
    .line 667
    return-void

    #@50
    .line 693
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

.method private getUniqueNumberLocked()J
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    #@0
    .prologue
    .line 186
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
    .line 828
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
    .line 827
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 181
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
    .line 180
    return-void
.end method

.method public static maybeCreate(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;Z)Landroid/net/apf/ApfFilter;
    .locals 4
    .param p0, "apfCapabilities"    # Landroid/net/apf/ApfCapabilities;
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p2, "ipManagerCallback"    # Landroid/net/ip/IpManager$Callback;
    .param p3, "multicastFilter"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 893
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    :cond_0
    return-object v3

    #@6
    .line 894
    :cond_1
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    #@8
    if-nez v0, :cond_2

    #@a
    return-object v3

    #@b
    .line 895
    :cond_2
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    #@d
    const/16 v1, 0x200

    #@f
    if-ge v0, v1, :cond_3

    #@11
    .line 896
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
    .line 897
    return-object v3

    #@2e
    .line 903
    :cond_3
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    #@30
    sget v1, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    #@32
    if-eq v0, v1, :cond_4

    #@34
    return-object v3

    #@35
    .line 904
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
    .line 905
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
    .line 906
    return-object v3

    #@5f
    .line 908
    :cond_5
    new-instance v0, Landroid/net/apf/ApfFilter;

    #@61
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/apf/ApfFilter;-><init>(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;Z)V

    #@64
    return-object v0
.end method

.method private maybeInstallNewProgramLocked()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    #@0
    .prologue
    .line 819
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    return-void

    #@9
    .line 821
    :cond_0
    iget-wide v2, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    #@b
    iget-wide v4, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    #@d
    add-long v0, v2, v4

    #@f
    .line 822
    .local v0, "expiry":J
    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    #@12
    move-result-wide v2

    #@13
    const-wide/16 v4, 0x1e

    #@15
    add-long/2addr v2, v4

    #@16
    cmp-long v2, v0, v2

    #@18
    if-gez v2, :cond_1

    #@1a
    .line 823
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V

    #@1d
    .line 818
    :cond_1
    return-void
.end method

.method private declared-synchronized processRa([BI)V
    .locals 6
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 847
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
    if-ge v1, v3, :cond_1

    #@a
    .line 848
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/net/apf/ApfFilter$Ra;

    #@12
    .line 849
    .local v2, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v2, p1, p2}, Landroid/net/apf/ApfFilter$Ra;->matches([BI)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 852
    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    #@1b
    move-result-wide v4

    #@1c
    iput-wide v4, v2, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    #@1e
    .line 853
    invoke-virtual {v2, p1, p2}, Landroid/net/apf/ApfFilter$Ra;->minLifetime([BI)J

    #@21
    move-result-wide v4

    #@22
    iput-wide v4, v2, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    #@24
    .line 854
    iget v3, v2, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    #@26
    add-int/lit8 v3, v3, 0x1

    #@28
    iput v3, v2, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    #@2a
    .line 863
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
    .line 865
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->maybeInstallNewProgramLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    monitor-exit p0

    #@3c
    .line 866
    return-void

    #@3d
    .line 847
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 869
    .end local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->purgeExpiredRasLocked()V

    #@43
    .line 871
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    move-result v3

    #@49
    const/16 v4, 0xa

    #@4b
    if-lt v3, v4, :cond_2

    #@4d
    monitor-exit p0

    #@4e
    return-void

    #@4f
    .line 874
    :cond_2
    :try_start_2
    new-instance v2, Landroid/net/apf/ApfFilter$Ra;

    #@51
    invoke-direct {v2, p0, p1, p2}, Landroid/net/apf/ApfFilter$Ra;-><init>(Landroid/net/apf/ApfFilter;[BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@54
    .line 880
    .restart local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :try_start_3
    invoke-virtual {v2}, Landroid/net/apf/ApfFilter$Ra;->isExpired()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_3

    #@5a
    monitor-exit p0

    #@5b
    return-void

    #@5c
    .line 875
    .end local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :catch_0
    move-exception v0

    #@5d
    .line 876
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v3, "ApfFilter"

    #@60
    new-instance v4, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v5, "Error parsing RA: "

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v4

    #@74
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@77
    monitor-exit p0

    #@78
    .line 877
    return-void

    #@79
    .line 881
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :cond_3
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v4, "Adding "

    #@81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v3

    #@85
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v3

    #@89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v3

    #@8d
    invoke-direct {p0, v3}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    #@90
    .line 882
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@92
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@95
    .line 883
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@98
    monitor-exit p0

    #@99
    .line 843
    return-void

    #@9a
    .end local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :catchall_0
    move-exception v3

    #@9b
    monitor-exit p0

    #@9c
    throw v3
.end method

.method private purgeExpiredRasLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    #@0
    .prologue
    .line 833
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
    .line 834
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
    .line 835
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
    .line 836
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@39
    goto :goto_0

    #@3a
    .line 838
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 832
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 10
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 951
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
    .line 952
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
    .line 953
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
    .line 955
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
    .line 958
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
    .line 959
    const-string/jumbo v3, "No program installed."

    #@82
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@85
    monitor-exit p0

    #@86
    .line 960
    return-void

    #@87
    .line 952
    :cond_0
    :try_start_3
    const-string/jumbo v3, "STOPPED"

    #@8a
    goto :goto_0

    #@8b
    .line 953
    :cond_1
    const-string/jumbo v3, "ALLOW"

    #@8e
    goto :goto_1

    #@8f
    .line 962
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
    .line 964
    const-string/jumbo v3, "Last program length %d, installed %ds ago, lifetime %ds"

    #@ab
    .line 963
    const/4 v4, 0x3

    #@ac
    new-array v4, v4, [Ljava/lang/Object;

    #@ae
    .line 965
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
    .line 966
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
    .line 963
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d2
    move-result-object v3

    #@d3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@d6
    .line 968
    const-string/jumbo v3, "RA filters:"

    #@d9
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@dc
    .line 969
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@df
    .line 970
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
    .line 971
    .local v1, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@f4
    .line 972
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@f7
    .line 974
    const-string/jumbo v3, "Seen: %d, last %ds ago"

    #@fa
    .line 973
    const/4 v4, 0x2

    #@fb
    new-array v4, v4, [Ljava/lang/Object;

    #@fd
    .line 974
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
    .line 973
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@117
    move-result-object v3

    #@118
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@11b
    .line 976
    const-string/jumbo v3, "Last match:"

    #@11e
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@121
    .line 977
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@124
    .line 978
    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$Ra;->getLastMatchingPacket()Ljava/lang/String;

    #@127
    move-result-object v3

    #@128
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@12b
    .line 979
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@12e
    .line 981
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
    .line 983
    .restart local v2    # "ra$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@138
    .line 986
    const-string/jumbo v3, "Last program:"

    #@13b
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@13e
    .line 987
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@141
    .line 988
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
    .line 989
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@14e
    monitor-exit p0

    #@14f
    .line 950
    return-void

    #@150
    .line 956
    .end local v2    # "ra$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@151
    .local v0, "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method installNewProgramLocked()V
    .locals 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    #@0
    .prologue
    .line 780
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->purgeExpiredRasLocked()V

    #@3
    .line 782
    const-wide v4, 0x7fffffffffffffffL

    #@8
    .line 785
    .local v4, "programMinLifetime":J
    :try_start_0
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->beginProgramLocked()Landroid/net/apf/ApfGenerator;

    #@b
    move-result-object v1

    #@c
    .line 786
    .local v1, "gen":Landroid/net/apf/ApfGenerator;
    new-instance v7, Ljava/util/ArrayList;

    #@e
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 787
    .local v7, "rasToFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/apf/ApfFilter$Ra;>;"
    iget-object v8, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@13
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v6

    #@17
    .local v6, "ra$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v8

    #@1b
    if-eqz v8, :cond_0

    #@1d
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Landroid/net/apf/ApfFilter$Ra;

    #@23
    .line 788
    .local v3, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v3, v1}, Landroid/net/apf/ApfFilter$Ra;->generateFilterLocked(Landroid/net/apf/ApfGenerator;)J

    #@26
    .line 790
    invoke-virtual {v1}, Landroid/net/apf/ApfGenerator;->programLengthOverEstimate()I

    #@29
    move-result v8

    #@2a
    iget-object v9, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    #@2c
    iget v9, v9, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    #@2e
    if-le v8, v9, :cond_1

    #@30
    .line 794
    .end local v3    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :cond_0
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->beginProgramLocked()Landroid/net/apf/ApfGenerator;

    #@33
    move-result-object v1

    #@34
    .line 795
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v6

    #@38
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v8

    #@3c
    if-eqz v8, :cond_2

    #@3e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Landroid/net/apf/ApfFilter$Ra;

    #@44
    .line 796
    .restart local v3    # "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v3, v1}, Landroid/net/apf/ApfFilter$Ra;->generateFilterLocked(Landroid/net/apf/ApfGenerator;)J

    #@47
    move-result-wide v8

    #@48
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    #@4b
    move-result-wide v4

    #@4c
    goto :goto_1

    #@4d
    .line 791
    :cond_1
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/net/apf/ApfGenerator$IllegalInstructionException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    goto :goto_0

    #@51
    .line 801
    .end local v1    # "gen":Landroid/net/apf/ApfGenerator;
    .end local v3    # "ra":Landroid/net/apf/ApfFilter$Ra;
    .end local v6    # "ra$iterator":Ljava/util/Iterator;
    .end local v7    # "rasToFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/apf/ApfFilter$Ra;>;"
    :catch_0
    move-exception v0

    #@52
    .line 802
    .local v0, "e":Landroid/net/apf/ApfGenerator$IllegalInstructionException;
    const-string/jumbo v8, "ApfFilter"

    #@55
    const-string/jumbo v9, "Program failed to generate: "

    #@58
    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    .line 803
    return-void

    #@5c
    .line 800
    .end local v0    # "e":Landroid/net/apf/ApfGenerator$IllegalInstructionException;
    .restart local v1    # "gen":Landroid/net/apf/ApfGenerator;
    .restart local v6    # "ra$iterator":Ljava/util/Iterator;
    .restart local v7    # "rasToFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/apf/ApfFilter$Ra;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/net/apf/ApfGenerator;->generate()[B
    :try_end_1
    .catch Landroid/net/apf/ApfGenerator$IllegalInstructionException; {:try_start_1 .. :try_end_1} :catch_0

    #@5f
    move-result-object v2

    #@60
    .line 805
    .local v2, "program":[B
    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    #@63
    move-result-wide v8

    #@64
    iput-wide v8, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    #@66
    .line 806
    iput-wide v4, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    #@68
    .line 807
    iput-object v2, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    #@6a
    .line 808
    iget v8, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    #@6c
    add-int/lit8 v8, v8, 0x1

    #@6e
    iput v8, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    #@70
    .line 813
    iget-object v8, p0, Landroid/net/apf/ApfFilter;->mIpManagerCallback:Landroid/net/ip/IpManager$Callback;

    #@72
    invoke-virtual {v8, v2}, Landroid/net/ip/IpManager$Callback;->installPacketFilter([B)V

    #@75
    .line 779
    return-void
.end method

.method maybeStartFilter()V
    .locals 6

    #@0
    .prologue
    .line 197
    :try_start_0
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    #@2
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    #@5
    move-result-object v3

    #@6
    iput-object v3, p0, Landroid/net/apf/ApfFilter;->mHardwareAddress:[B

    #@8
    .line 198
    monitor-enter p0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 200
    :try_start_1
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    :try_start_2
    monitor-exit p0

    #@d
    .line 202
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
    .line 203
    .local v2, "socket":Ljava/io/FileDescriptor;
    new-instance v0, Landroid/system/PacketSocketAddress;

    #@19
    sget v3, Landroid/system/OsConstants;->ETH_P_IPV6:I

    #@1b
    int-to-short v3, v3

    #@1c
    .line 204
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    #@1e
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getIndex()I

    #@21
    move-result v4

    #@22
    .line 203
    invoke-direct {v0, v3, v4}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    #@25
    .line 205
    .local v0, "addr":Landroid/system/PacketSocketAddress;
    invoke-static {v2, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    #@28
    .line 206
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    #@2a
    iget v3, v3, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    #@2c
    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->attachRaFilter(Ljava/io/FileDescriptor;I)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    #@2f
    .line 211
    new-instance v3, Landroid/net/apf/ApfFilter$ReceiveThread;

    #@31
    invoke-direct {v3, p0, v2}, Landroid/net/apf/ApfFilter$ReceiveThread;-><init>(Landroid/net/apf/ApfFilter;Ljava/io/FileDescriptor;)V

    #@34
    iput-object v3, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    #@36
    .line 212
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    #@38
    invoke-virtual {v3}, Landroid/net/apf/ApfFilter$ReceiveThread;->start()V

    #@3b
    .line 194
    return-void

    #@3c
    .line 198
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
    .line 207
    :catch_0
    move-exception v1

    #@40
    .line 208
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ApfFilter"

    #@43
    const-string/jumbo v4, "Error starting filter"

    #@46
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@49
    .line 209
    return-void
.end method

.method public declared-synchronized setLinkProperties(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "lp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 942
    :try_start_0
    invoke-static {p1}, Landroid/net/apf/ApfFilter;->findIPv4Address(Landroid/net/LinkProperties;)[B

    #@4
    move-result-object v0

    #@5
    .line 944
    .local v0, "ipv4Address":[B
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    #@7
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    monitor-exit p0

    #@e
    return-void

    #@f
    .line 946
    :cond_0
    :try_start_1
    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    #@11
    .line 947
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 940
    return-void

    #@16
    .end local v0    # "ipv4Address":[B
    :catchall_0
    move-exception v1

    #@17
    monitor-exit p0

    #@18
    throw v1
.end method

.method public declared-synchronized setMulticastFilter(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 921
    :try_start_0
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    #@3
    if-eq v0, p1, :cond_0

    #@5
    .line 922
    iput-boolean p1, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    #@7
    .line 923
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 920
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
    .line 912
    :try_start_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 913
    const-string/jumbo v0, "shutting down"

    #@8
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    #@b
    .line 914
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    #@d
    invoke-virtual {v0}, Landroid/net/apf/ApfFilter$ReceiveThread;->halt()V

    #@10
    .line 915
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    #@13
    .line 917
    :cond_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 911
    return-void

    #@1a
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
.end method
