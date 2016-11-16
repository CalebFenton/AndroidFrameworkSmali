.class public Landroid/net/util/IpUtils;
.super Ljava/lang/Object;
.source "IpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addressAndPortToString(Ljava/net/InetAddress;I)Ljava/lang/String;
    .locals 4
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "port"    # I

    #@0
    .prologue
    .line 144
    instance-of v0, p0, Ljava/net/Inet6Address;

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "[%s]:%d"

    #@7
    .line 143
    :goto_0
    const/4 v1, 0x2

    #@8
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    .line 145
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    const/4 v3, 0x0

    #@f
    aput-object v2, v1, v3

    #@11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    .line 143
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0

    #@1d
    .line 144
    :cond_0
    const-string/jumbo v0, "%s:%d"

    #@20
    goto :goto_0
.end method

.method private static checksum(Ljava/nio/ByteBuffer;III)I
    .locals 10
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "seed"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const v9, 0xffff

    #@3
    .line 47
    move v6, p1

    #@4
    .line 48
    .local v6, "sum":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@7
    move-result v1

    #@8
    .line 52
    .local v1, "bufPosition":I
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@b
    .line 53
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    #@e
    move-result-object v5

    #@f
    .line 56
    .local v5, "shortBuf":Ljava/nio/ShortBuffer;
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@12
    .line 58
    sub-int v7, p3, p2

    #@14
    div-int/lit8 v4, v7, 0x2

    #@16
    .line 59
    .local v4, "numShorts":I
    const/4 v2, 0x0

    #@17
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    #@19
    .line 60
    invoke-virtual {v5, v2}, Ljava/nio/ShortBuffer;->get(I)S

    #@1c
    move-result v7

    #@1d
    invoke-static {v7}, Landroid/net/util/IpUtils;->intAbs(S)I

    #@20
    move-result v7

    #@21
    add-int/2addr v6, v7

    #@22
    .line 59
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 62
    :cond_0
    mul-int/lit8 v7, v4, 0x2

    #@27
    add-int/2addr p2, v7

    #@28
    .line 65
    if-eq p3, p2, :cond_2

    #@2a
    .line 66
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    #@2d
    move-result v7

    #@2e
    int-to-short v0, v7

    #@2f
    .line 69
    .local v0, "b":S
    if-gez v0, :cond_1

    #@31
    .line 70
    add-int/lit16 v7, v0, 0x100

    #@33
    int-to-short v0, v7

    #@34
    .line 73
    :cond_1
    mul-int/lit16 v7, v0, 0x100

    #@36
    add-int/2addr v6, v7

    #@37
    .line 76
    .end local v0    # "b":S
    :cond_2
    shr-int/lit8 v7, v6, 0x10

    #@39
    and-int/2addr v7, v9

    #@3a
    and-int v8, v6, v9

    #@3c
    add-int v6, v7, v8

    #@3e
    .line 77
    shr-int/lit8 v7, v6, 0x10

    #@40
    and-int/2addr v7, v9

    #@41
    add-int/2addr v7, v6

    #@42
    and-int v6, v7, v9

    #@44
    .line 78
    not-int v3, v6

    #@45
    .line 79
    .local v3, "negated":I
    int-to-short v7, v3

    #@46
    invoke-static {v7}, Landroid/net/util/IpUtils;->intAbs(S)I

    #@49
    move-result v7

    #@4a
    return v7
.end method

.method private static intAbs(S)I
    .locals 1
    .param p0, "v"    # S

    #@0
    .prologue
    .line 38
    const v0, 0xffff

    #@3
    and-int/2addr v0, p0

    #@4
    return v0
.end method

.method public static ipChecksum(Ljava/nio/ByteBuffer;I)S
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "headerOffset"    # I

    #@0
    .prologue
    .line 106
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    #@3
    move-result v1

    #@4
    and-int/lit8 v1, v1, 0xf

    #@6
    int-to-byte v0, v1

    #@7
    .line 107
    .local v0, "ihl":B
    mul-int/lit8 v1, v0, 0x4

    #@9
    add-int/2addr v1, p1

    #@a
    const/4 v2, 0x0

    #@b
    invoke-static {p0, v2, p1, v1}, Landroid/net/util/IpUtils;->checksum(Ljava/nio/ByteBuffer;III)I

    #@e
    move-result v1

    #@f
    int-to-short v1, v1

    #@10
    return v1
.end method

.method private static ipversion(Ljava/nio/ByteBuffer;I)B
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "headerOffset"    # I

    #@0
    .prologue
    .line 102
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    #@3
    move-result v0

    #@4
    and-int/lit8 v0, v0, -0x10

    #@6
    shr-int/lit8 v0, v0, 0x4

    #@8
    int-to-byte v0, v0

    #@9
    return v0
.end method

.method public static isValidUdpOrTcpPort(I)Z
    .locals 2
    .param p0, "port"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 149
    if-lez p0, :cond_0

    #@3
    const/high16 v1, 0x10000

    #@5
    if-ge p0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method private static pseudoChecksumIPv4(Ljava/nio/ByteBuffer;III)I
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "headerOffset"    # I
    .param p2, "protocol"    # I
    .param p3, "transportLen"    # I

    #@0
    .prologue
    .line 84
    add-int v0, p2, p3

    #@2
    .line 85
    .local v0, "partial":I
    add-int/lit8 v1, p1, 0xc

    #@4
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@7
    move-result v1

    #@8
    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    .line 86
    add-int/lit8 v1, p1, 0xe

    #@f
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@12
    move-result v1

    #@13
    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    #@16
    move-result v1

    #@17
    add-int/2addr v0, v1

    #@18
    .line 87
    add-int/lit8 v1, p1, 0x10

    #@1a
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@1d
    move-result v1

    #@1e
    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    #@21
    move-result v1

    #@22
    add-int/2addr v0, v1

    #@23
    .line 88
    add-int/lit8 v1, p1, 0x12

    #@25
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@28
    move-result v1

    #@29
    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    #@2c
    move-result v1

    #@2d
    add-int/2addr v0, v1

    #@2e
    .line 89
    return v0
.end method

.method private static pseudoChecksumIPv6(Ljava/nio/ByteBuffer;III)I
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "headerOffset"    # I
    .param p2, "protocol"    # I
    .param p3, "transportLen"    # I

    #@0
    .prologue
    .line 94
    add-int v1, p2, p3

    #@2
    .line 95
    .local v1, "partial":I
    const/16 v0, 0x8

    #@4
    .local v0, "offset":I
    :goto_0
    const/16 v2, 0x28

    #@6
    if-ge v0, v2, :cond_0

    #@8
    .line 96
    add-int v2, p1, v0

    #@a
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@d
    move-result v2

    #@e
    invoke-static {v2}, Landroid/net/util/IpUtils;->intAbs(S)I

    #@11
    move-result v2

    #@12
    add-int/2addr v1, v2

    #@13
    .line 95
    add-int/lit8 v0, v0, 0x2

    #@15
    goto :goto_0

    #@16
    .line 98
    :cond_0
    return v1
.end method

.method public static tcpChecksum(Ljava/nio/ByteBuffer;III)S
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "ipOffset"    # I
    .param p2, "transportOffset"    # I
    .param p3, "transportLen"    # I

    #@0
    .prologue
    .line 139
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    #@2
    invoke-static {p0, v0, p1, p2, p3}, Landroid/net/util/IpUtils;->transportChecksum(Ljava/nio/ByteBuffer;IIII)S

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static transportChecksum(Ljava/nio/ByteBuffer;IIII)S
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "protocol"    # I
    .param p2, "ipOffset"    # I
    .param p3, "transportOffset"    # I
    .param p4, "transportLen"    # I

    #@0
    .prologue
    .line 112
    if-gez p4, :cond_0

    #@2
    .line 113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "Transport length < 0: "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 116
    :cond_0
    invoke-static {p0, p2}, Landroid/net/util/IpUtils;->ipversion(Ljava/nio/ByteBuffer;I)B

    #@1f
    move-result v1

    #@20
    .line 117
    .local v1, "ver":B
    const/4 v2, 0x4

    #@21
    if-ne v1, v2, :cond_2

    #@23
    .line 118
    invoke-static {p0, p2, p1, p4}, Landroid/net/util/IpUtils;->pseudoChecksumIPv4(Ljava/nio/ByteBuffer;III)I

    #@26
    move-result v0

    #@27
    .line 125
    .local v0, "sum":I
    :goto_0
    add-int v2, p3, p4

    #@29
    invoke-static {p0, v0, p3, v2}, Landroid/net/util/IpUtils;->checksum(Ljava/nio/ByteBuffer;III)I

    #@2c
    move-result v0

    #@2d
    .line 126
    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    #@2f
    if-ne p1, v2, :cond_1

    #@31
    if-nez v0, :cond_1

    #@33
    .line 127
    const/4 v0, -0x1

    #@34
    .line 129
    :cond_1
    int-to-short v2, v0

    #@35
    return v2

    #@36
    .line 119
    .end local v0    # "sum":I
    :cond_2
    const/4 v2, 0x6

    #@37
    if-ne v1, v2, :cond_3

    #@39
    .line 120
    invoke-static {p0, p2, p1, p4}, Landroid/net/util/IpUtils;->pseudoChecksumIPv6(Ljava/nio/ByteBuffer;III)I

    #@3c
    move-result v0

    #@3d
    .restart local v0    # "sum":I
    goto :goto_0

    #@3e
    .line 122
    .end local v0    # "sum":I
    :cond_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@40
    const-string/jumbo v3, "Checksum must be IPv4 or IPv6"

    #@43
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@46
    throw v2
.end method

.method public static udpChecksum(Ljava/nio/ByteBuffer;II)S
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "ipOffset"    # I
    .param p2, "transportOffset"    # I

    #@0
    .prologue
    .line 133
    add-int/lit8 v1, p2, 0x4

    #@2
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@5
    move-result v1

    #@6
    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    #@9
    move-result v0

    #@a
    .line 134
    .local v0, "transportLen":I
    sget v1, Landroid/system/OsConstants;->IPPROTO_UDP:I

    #@c
    invoke-static {p0, v1, p1, p2, v0}, Landroid/net/util/IpUtils;->transportChecksum(Ljava/nio/ByteBuffer;IIII)S

    #@f
    move-result v1

    #@10
    return v1
.end method
