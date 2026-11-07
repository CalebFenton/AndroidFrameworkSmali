.class public Lcom/android/internal/telephony/util/IpUtils;
.super Ljava/lang/Object;
.source "IpUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addressAndPortToString(Ljava/net/InetAddress;I)Ljava/lang/String;
    .registers 3

    .line 167
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_7

    const-string v0, "[%s]:%d"

    goto :goto_9

    :cond_7
    const-string v0, "%s:%d"

    .line 168
    :goto_9
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 166
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist checksum(Ljava/nio/ByteBuffer;III)I
    .registers 9

    const v0, 0xffff

    add-int/2addr p1, v0

    .line 50
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 54
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 58
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v1, p3, p2

    .line 60
    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_25

    .line 62
    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/util/IpUtils;->intAbs(S)I

    move-result v4

    add-int/2addr p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_25
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    if-eq p3, p2, :cond_37

    .line 68
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    int-to-short p0, p0

    if-gez p0, :cond_34

    add-int/lit16 p0, p0, 0x100

    int-to-short p0, p0

    :cond_34
    mul-int/lit16 p0, p0, 0x100

    add-int/2addr p1, p0

    :cond_37
    shr-int/lit8 p0, p1, 0x10

    and-int/2addr p0, v0

    and-int/2addr p1, v0

    add-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x10

    and-int/2addr p1, v0

    and-int/2addr p0, v0

    add-int/2addr p1, p0

    xor-int p0, p1, v0

    return p0
.end method

.method public static blacklist icmpChecksum(Ljava/nio/ByteBuffer;II)S
    .registers 4

    const/4 v0, 0x0

    add-int/2addr p2, p1

    .line 154
    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/telephony/util/IpUtils;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public static blacklist icmpv6Checksum(Ljava/nio/ByteBuffer;III)S
    .registers 5

    .line 162
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/util/IpUtils;->transportChecksum(Ljava/nio/ByteBuffer;IIII)S

    move-result p0

    return p0
.end method

.method private static blacklist intAbs(S)I
    .registers 2

    .line 0
    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static blacklist ipChecksum(Ljava/nio/ByteBuffer;I)S
    .registers 4

    .line 107
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    const/4 v1, 0x0

    .line 108
    invoke-static {p0, v1, p1, v0}, Lcom/android/internal/telephony/util/IpUtils;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method private static blacklist ipversion(Ljava/nio/ByteBuffer;I)B
    .registers 2

    .line 103
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, -0x10

    shr-int/lit8 p0, p0, 0x4

    int-to-byte p0, p0

    return p0
.end method

.method public static blacklist isValidUdpOrTcpPort(I)Z
    .registers 2

    .line 0
    if-lez p0, :cond_8

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist pseudoChecksumIPv4(Ljava/nio/ByteBuffer;III)I
    .registers 4

    add-int/2addr p2, p3

    add-int/lit8 p3, p1, 0xc

    .line 86
    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p3

    invoke-static {p3}, Lcom/android/internal/telephony/util/IpUtils;->intAbs(S)I

    move-result p3

    add-int/2addr p2, p3

    add-int/lit8 p3, p1, 0xe

    .line 87
    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p3

    invoke-static {p3}, Lcom/android/internal/telephony/util/IpUtils;->intAbs(S)I

    move-result p3

    add-int/2addr p2, p3

    add-int/lit8 p3, p1, 0x10

    .line 88
    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p3

    invoke-static {p3}, Lcom/android/internal/telephony/util/IpUtils;->intAbs(S)I

    move-result p3

    add-int/2addr p2, p3

    add-int/lit8 p1, p1, 0x12

    .line 89
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/util/IpUtils;->intAbs(S)I

    move-result p0

    add-int/2addr p2, p0

    return p2
.end method

.method private static blacklist pseudoChecksumIPv6(Ljava/nio/ByteBuffer;III)I
    .registers 5

    add-int/2addr p2, p3

    const/16 p3, 0x8

    :goto_3
    const/16 v0, 0x28

    if-ge p3, v0, :cond_15

    add-int v0, p1, p3

    .line 97
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/util/IpUtils;->intAbs(S)I

    move-result v0

    add-int/2addr p2, v0

    add-int/lit8 p3, p3, 0x2

    goto :goto_3

    :cond_15
    return p2
.end method

.method public static blacklist tcpChecksum(Ljava/nio/ByteBuffer;III)S
    .registers 5

    .line 146
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/util/IpUtils;->transportChecksum(Ljava/nio/ByteBuffer;IIII)S

    move-result p0

    return p0
.end method

.method private static blacklist transportChecksum(Ljava/nio/ByteBuffer;IIII)S
    .registers 7

    if-ltz p4, :cond_2b

    .line 117
    invoke-static {p0, p2}, Lcom/android/internal/telephony/util/IpUtils;->ipversion(Ljava/nio/ByteBuffer;I)B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 119
    invoke-static {p0, p2, p1, p4}, Lcom/android/internal/telephony/util/IpUtils;->pseudoChecksumIPv4(Ljava/nio/ByteBuffer;III)I

    move-result p2

    goto :goto_15

    :cond_e
    const/4 v1, 0x6

    if-ne v0, v1, :cond_23

    .line 121
    invoke-static {p0, p2, p1, p4}, Lcom/android/internal/telephony/util/IpUtils;->pseudoChecksumIPv6(Ljava/nio/ByteBuffer;III)I

    move-result p2

    :goto_15
    add-int/2addr p4, p3

    .line 126
    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/telephony/util/IpUtils;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result p0

    .line 127
    sget p2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne p1, p2, :cond_21

    if-nez p0, :cond_21

    const/4 p0, -0x1

    :cond_21
    int-to-short p0, p0

    return p0

    .line 123
    :cond_23
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Checksum must be IPv4 or IPv6"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 114
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Transport length < 0: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist udpChecksum(Ljava/nio/ByteBuffer;II)S
    .registers 5

    add-int/lit8 v0, p2, 0x4

    .line 137
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/util/IpUtils;->intAbs(S)I

    move-result v0

    .line 138
    sget v1, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {p0, v1, p1, p2, v0}, Lcom/android/internal/telephony/util/IpUtils;->transportChecksum(Ljava/nio/ByteBuffer;IIII)S

    move-result p0

    return p0
.end method
